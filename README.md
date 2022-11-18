# Microblog

A simple Flask app.

A proof of concept to learn how to use Nix and Devenv.

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

## Using Devenv

**Preferred method**

```sh
# Run the flask app
devenv up

# Start a shell in the app environment
devenv shell

# Run commands in the app environment
devenv shell flask routes
```
