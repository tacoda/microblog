{ pkgs ? import <nixpkgs> {} }:

pkgs.python310Packages.buildPythonApplication {
  pname = "microblog";
  src = ./.;
  version = "0.1";
  propagatedBuildInputs = [
    pkgs.python310Packages.flask
    pkgs.python310Packages.python-dotenv
  ];
}
