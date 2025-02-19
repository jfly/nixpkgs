{ buildGoModule, lib, fetchFromGitHub }:
buildGoModule rec {
  pname = "tfswitch";
  version = "0.13.1201";

  src = fetchFromGitHub {
    owner = "warrensbox";
    repo = "terraform-switcher";
    rev = version;
    sha256 = "sha256-gJa8oVdgerDi0GdTSNus5rHLsFuzg8ZqVeKTMuPXu0o=";
  };

  vendorSha256 = "sha256-tp2Bv/vcHCuB/HCZLfL/zOm/UfPt6XXGE7johrjL3cs=";

  # Disable tests since it requires network access and relies on the
  # presence of release.hashicorp.com
  doCheck = false;

  runVend = true;

  postInstall = ''
    # The binary is named tfswitch
    mv $out/bin/terraform-switcher $out/bin/tfswitch
  '';

  meta = with lib; {
    description = "A command line tool to switch between different versions of terraform";
    homepage = "https://github.com/warrensbox/terraform-switcher";
    license = licenses.mit;
    maintainers = with maintainers; [ psibi ];
  };
}
