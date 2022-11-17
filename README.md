# Nix Flask

A proof of concept to learn how to use Nix.

## Dependencies

[Nix](https://nixos.org)

## Using Nix

```sh
# Build
nix-build

# Run the flask app
nix-shell --run "python microblog.py"

# Test the output of the sever
nix-shell --run "bash verify.sh"
```
