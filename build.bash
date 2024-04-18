#!/bin/bash

# Store the location of the script
SCRIPT_LOCATION="$(dirname "$(realpath "$0")")"

cd "$SCRIPT_LOCATION/mdbook" && mdbook build && cd -
rm -rf "$SCRIPT_LOCATION/handbook"
mv "$SCRIPT_LOCATION/mdbook/book" "$SCRIPT_LOCATION/handbook"
