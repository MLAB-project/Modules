#!/bin/bash
cd /home/odroid/repos/SUPERCAP/

if ! pidof -x ./SUPERCAP.py > /dev/null; then
    ./SUPERCAP.py &
fi
