#!/bin/bash

# Store the location of this script
SCRIPT_LOCATION="$(dirname "$(realpath "$0")")"

bash "$SCRIPT_LOCATION/build.bash"

cd "$SCRIPT_LOCATION"
git add .
git commit -m "OK"
git push
