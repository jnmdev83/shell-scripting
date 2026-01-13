#!/usr/bin/bash

cd /mnt/d/pep/pep\ classes/june
d_drive=$PWD
echo "Current path: $d_drive"
echo "$(du -ah)" | head -n 3 | sort -rh