import contextlib
import fcntl
import logging
import os
from pathlib import Path
import json
import signal
import subprocess
import sys
import dataclasses

logger = logging.getLogger()


# Install a SIGTERM handler so all our context managers get a chance to
# clean up.
signal.signal(signal.SIGTERM, lambda _signum, _frame: sys.exit(0))


@dataclasses.dataclass
class Netns:
    name: str
    path: Path


@contextlib.contextmanager
def mk_netns(name: str):
    logger.info("creating netns %s", name)
    subprocess.run(["ip", "netns", "add", name], check=True)
    try:
        yield Netns(name=name, path=Path("/run/netns") / name)
    finally:
        logger.info("deleting netns %s", name)
        subprocess.run(["ip", "netns", "delete", name], check=True)


@contextlib.contextmanager
def vlan_lock(vlan: int):
    lockfile = Path(f"/run/nixos-nspawn/vlan-{vlan}.lock")
    lockfile.parent.mkdir(parents=True, exist_ok=True)
    with lockfile.open("w") as f:
        # Grab an exclusive lock.
        fcntl.flock(f, fcntl.LOCK_EX)
        try:
            yield
        finally:
            # Release the exclusive lock.
            fcntl.flock(f, fcntl.LOCK_UN)


@contextlib.contextmanager
def ensure_vlan_bridge(vlan: int):
    """
    Ensure a bridge for the given vlan exists, and create one if it does not.

    Note that this bridge may get used by other containers, so we're careful
    to not delete it unless we're sure nobody else is using it.
    """
    # These IP addresses correspond to the static IP assignment logic in
    # <nixos/lib/testing/network.nix>.
    ipv4_addr = f"192.168.{vlan}.254/24"
    ipv6_addr = f"2001:db8:{vlan}::fe/64"

    bridge_name = f"br{vlan}"
    bridge_path = Path("/sys/class/net") / bridge_name
    try:
        # To avoid racing against other nspawn containers that also
        # need this vlan, grab an exclusive lock.
        with vlan_lock(vlan):
            if not bridge_path.exists():
                logger.info("creating bridge %s", bridge_name)
                subprocess.run(
                    ["ip", "link", "add", bridge_name, "type", "bridge"],
                    check=True,
                )
                subprocess.run(
                    ["ip", "link", "set", bridge_name, "up"],
                    check=True,
                )
                subprocess.run(
                    ["ip", "addr", "add", ipv4_addr, "dev", bridge_name],
                    check=True,
                )
                subprocess.run(
                    ["ip", "addr", "add", ipv6_addr, "dev", bridge_name],
                    check=True,
                )

        yield bridge_name
    finally:
        # To avoid racing against other nspawn containers that also
        # releasing this vlan, grab an exclusive lock.
        with vlan_lock(vlan):
            if bridge_path.exists():
                child_intf_count = len(list((bridge_path / "brif").iterdir()))
                if child_intf_count == 0:
                    logger.info("deleting bridge %s", bridge_name)
                    subprocess.run(
                        ["ip", "link", "delete", bridge_name],
                        check=True,
                    )


@contextlib.contextmanager
def mk_veth(
    container_name: str,
    netns: Netns,
    container_intf_name: str,
    vlan: int,
):
    host_intf_name = f"{container_name}-{container_intf_name}"
    with ensure_vlan_bridge(vlan) as bridge_name:
        logger.info("creating interface %s", host_intf_name)
        subprocess.run(
            [
                "ip",
                "link",
                "add",
                host_intf_name,
                "type",
                "veth",
                "peer",
                "name",
                container_intf_name,
                "netns",
                netns.name,
            ],
            check=True,
        )
        try:
            subprocess.run(
                ["ip", "link", "set", host_intf_name, "master", bridge_name],
                check=True,
            )
            subprocess.run(
                ["ip", "link", "set", host_intf_name, "up"],
                check=True,
            )
            yield
        finally:
            logger.info("deleting interface %s", host_intf_name)
            subprocess.run(
                ["ip", "link", "delete", host_intf_name],
                check=True,
            )


def run_nspawn(
    container_name: str,
    root_dir_str: str,
    interfaces_json: str,
    nspawn_options: str,
    init: str,
    init_args: list[str],
):
    logging.basicConfig(
        format=f"nixos-nspawn({container_name}): %(message)s",
        level=logging.WARNING,
    )

    root_dir = Path(root_dir_str)
    interfaces = json.loads(interfaces_json)

    root_dir.mkdir(parents=True, exist_ok=True)
    root_dir.chmod(0o755)

    with (
        mk_netns(f"nixos-nspawn-{container_name}") as netns,
        contextlib.ExitStack() as stack
    ):
        for interface in interfaces:
            stack.enter_context(
                mk_veth(
                    container_name=container_name,
                    netns=netns,
                    container_intf_name=interface['name'],
                    vlan=interface['vlan'],
                )
            )

        def print_pid():
            print(
                f"systemd-nspawn's PID is {os.getpid()}",
                # Need to flush stdout before systemd-nspawn gets exec-ed.
                flush=True,
            )

        cp = subprocess.Popen(
            [
                "systemd-nspawn",
                *nspawn_options,
                f"--directory={root_dir}",
                f"--network-namespace-path={netns.path}",
                init,
                *init_args,
            ],
            preexec_fn=print_pid,
        )

        try:
            sys.exit(cp.wait())
        finally:
            # If we get interrupted for any reason (most likely a SIGTERM),
            # be sure to kill our child process.
            cp.terminate()
