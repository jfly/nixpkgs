{ lib
, python3
, fetchFromGitHub
}:

let
  python = python3.override {
    packageOverrides = self: super: {
      poetry = self.callPackage ./unwrapped.nix { };

      # version overrides required by poetry and its plugins
      filelock = super.filelock.overridePythonAttrs (old: rec {
        version = "3.12.0";
        src = self.fetchPypi {
          inherit (old) pname;
          inherit version;
          hash = "sha256-/AOuQyiMAT0uqDyFlwAbESnbNRqtnFf+JAkyeRa45xg=";
        };
        nativeCheckInputs = with self; [
          pytest-mock
          pytestCheckHook
        ];
      });
      platformdirs = super.platformdirs.overridePythonAttrs (old: rec {
        version = "3.5.1";
        src = fetchFromGitHub {
          owner = "platformdirs";
          repo = "platformdirs";
          rev = "refs/tags/${version}";
          hash = "sha256-/qi22jiF+P7XcG/D+dxoOrHk89amdBoGewrTqZZOsoM=";
        };
        SETUPTOOLS_SCM_PRETEND_VERSION = version;
      });
      poetry-core = super.poetry-core.overridePythonAttrs (old: rec {
        version = "1.6.1";
        src = fetchFromGitHub {
          owner = "python-poetry";
          repo = "poetry-core";
          rev = version;
          hash = "sha256-Gc22Y2T4uO39jiOqEUFeOfnVCbknuDjmzFPZgk2eY74=";
        };
        nativeCheckInputs = old.nativeCheckInputs ++ [
          self.tomli-w
        ];
      });
      virtualenv = super.virtualenv.overridePythonAttrs (old: rec {
        version = "20.23.0";
        src = self.fetchPypi {
          inherit (old) pname;
          inherit version;
          hash = "sha256-qFyqVUztDAr70NY45+LXtfktI0eNBdF6dtrqyPJ5+SQ=";
        };
        nativeCheckInputs = old.nativeCheckInputs ++ [
          self.time-machine
        ];
      });
    };
  };

  plugins = with python.pkgs; {
    poetry-audit-plugin = callPackage ./plugins/poetry-audit-plugin.nix { };
    poetry-plugin-up = callPackage ./plugins/poetry-plugin-up.nix { };
  };

  # selector is a function mapping pythonPackages to a list of plugins
  # e.g. poetry.withPlugins (ps: with ps; [ poetry-plugin-up ])
  withPlugins = selector: let
    selected = selector plugins;
  in python.pkgs.toPythonApplication (python.pkgs.poetry.overridePythonAttrs (old: {
    propagatedBuildInputs = old.propagatedBuildInputs ++ selected;

    # save some build time when adding plugins by disabling tests
    #<<< doCheck = selected == [ ];
    doCheck = false; #<<<

    # Propagating dependencies leaks them through $PYTHONPATH which causes issues
    # when used in nix-shell.
    postFixup = ''
      rm $out/nix-support/propagated-build-inputs
    '';

    passthru = rec {
      inherit plugins withPlugins python;
    };
  }));
in withPlugins (ps: [ ])
