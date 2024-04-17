#!/bin/bash

cd ./mdbook && mdbook build && cd -
rm -rf ./handbookbook
mv ./mdbook/book ./handbook
