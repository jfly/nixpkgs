{ lib, python3, fetchFromGitHub, nixosTests }:

python3.pkgs.buildPythonApplication rec {
  pname = "radicale";
  version = "3.1.0";

  src = fetchFromGitHub {
    owner = "Kozea";
    repo = "Radicale";
    rev = "v${version}";
    hash = "sha256-LtPv+3FQMGC2YP2+1cSPZVUIzrUhteJTl58+JdvGcQg=";
  };

  postPatch = ''
    sed -i '/addopts/d' setup.cfg
  '';

  propagatedBuildInputs = with python3.pkgs; [
    defusedxml
    passlib
    vobject
    python-dateutil
    setuptools
  ];

  checkInputs = with python3.pkgs; [
    pytestCheckHook
    waitress
  ];

  passthru.tests = {
    inherit (nixosTests) radicale;
  };

  meta = with lib; {
    homepage = "https://www.radicale.org/3.0.html";
    description = "CalDAV and CardDAV server";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ dotlambda ];
  };
}
