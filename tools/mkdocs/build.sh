#!/bin/bash

python3 generator.py
cd ./site/ || exit
mkdocs build
rsync --include ".*" -v -rz --checksum site/ circl@cppz.circl.lu:/var/www/misp-galaxy.org
