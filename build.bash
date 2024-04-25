#!/bin/bash

SCRIPT_LOCATION="$(dirname "$(realpath "$0")")"

cd "$SCRIPT_LOCATION/mdbook" && mdbook build && cd -
rm -rf "$SCRIPT_LOCATION/docs/employee/handbook"
mv "$SCRIPT_LOCATION/mdbook/book" "$SCRIPT_LOCATION/docs/employee/handbook"
