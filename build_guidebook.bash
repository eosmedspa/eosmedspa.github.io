#!/bin/bash

cd ./mdbook && mdbook build && cd -
rm -rf ./guidebook
mv ./mdbook/book ./guidebook
