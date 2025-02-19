{ buildGoModule, cdrtools, fetchFromGitHub, lib, libvirt, makeWrapper, pkg-config }:

# USAGE:
# install the following package globally or in nix-shell:
#
#   (terraform.withPlugins (p: [p.libvirt]))
#
# configuration.nix:
#
#   virtualisation.libvirtd.enable = true;
#
# pick an example from (i.e ubuntu):
# https://github.com/dmacvicar/terraform-provider-libvirt/tree/main/examples

let
  sha256 = "sha256-1l+ARrXHxtSdnQfYV/6gw3BYHVH8NN4pi+Ttk1nwF88=";
  vendorSha256 = "sha256-OJa8pQgf5PlECZZkFV9fyCOdh6CrregY1BWycx7JPFE=";
  version = "0.6.12";
in buildGoModule {
  inherit version;
  inherit vendorSha256;

  pname = "terraform-provider-libvirt";

  src = fetchFromGitHub {
    inherit sha256;

    owner = "dmacvicar";
    repo = "terraform-provider-libvirt";
    rev = "v${version}";
  };

  nativeBuildInputs = [ pkg-config makeWrapper ];

  buildInputs = [ libvirt ];

  # mkisofs needed to create ISOs holding cloud-init data,
  # and wrapped to terraform via deecb4c1aab780047d79978c636eeb879dd68630
  propagatedBuildInputs = [ cdrtools ];

  # Terraform allow checking the provider versions, but this breaks
  # if the versions are not provided via file paths.
  postBuild = "mv $GOPATH/bin/terraform-provider-libvirt{,_v${version}}";

  ldflags = [ "-X main.version=${version}" ];
  passthru.provider-source-address = "registry.terraform.io/dmacvicar/libvirt";

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/dmacvicar/terraform-provider-libvirt";
    description = "Terraform provider for libvirt";
    license = licenses.asl20;
    maintainers = with maintainers; [ mic92 ];
  };
}
