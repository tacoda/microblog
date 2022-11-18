{ pkgs, ... }:

{
  languages.python.enable = true;

  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.bat
    pkgs.curl
    pkgs.fd
    pkgs.fzf
    pkgs.exa
    pkgs.git
    pkgs.jq
    pkgs.neovim
    pkgs.ripgrep
    pkgs.watchexec
    pkgs.python310Packages.flask
    pkgs.python310Packages.python-dotenv
    pkgs.python310Packages.flask-wtf
    pkgs.python310Packages.flask-sqlalchemy
    pkgs.python310Packages.flask_migrate
  ];

  enterShell = ''
    flask --help
  '';

  # https://devenv.sh/languages/
  languages.nix.enable = true;

  # https://devenv.sh/scripts/
  scripts.shell.exec = "flask shell";
  scripts.migrate.exec = "flask db migrate";
  scripts.upgrade.exec = "flask db upgrade";
  scripts.downgrade.exec = "flask db downgrade";

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  processes.run.exec = "flask run";
}