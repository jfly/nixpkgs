let
  pkgs = import ./my-cuda-pkgs.nix;
  inherit (pkgs) lib;
in
pkgs.runCommand "saxdemo"
  {
    requiredSystemFeatures = [ "cuda" ];
  }
  ''
    ${lib.getExe pkgs.cudaPackages.saxpy} &> $out
  ''
