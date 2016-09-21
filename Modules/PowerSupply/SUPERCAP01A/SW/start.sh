#!/bin/bash
cd /home/odroid/repos/CLOCKMOT01A/

if ! pidof -x ./SUPERCAP.py > /dev/null; then
    ./SUPERCAP.py &
fi
