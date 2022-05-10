#!/usr/bin/env nix-shell
#! nix-shell -i bash
set -euo pipefail

# start myapp in background and save the process id
python myapp.py >> /dev/null 2>&1 &
pid=$!

if [[ $(curl --retry 3 --retry-delay 1 --retry-connrefused http://127.0.0.1:5000) == "Hello, Nix!" ]]; then
    echo "SUCCESS: myapp.py is serving the expected string"
    kill $pid
    exit 0
else
    echo "FAIL: myapp.py is not serving the expected string"
    kill $pid
    exit 1
fi
