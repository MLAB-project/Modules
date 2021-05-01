#!/bin/bash
stty -F /dev/ttyUSB0 igncr -echo onocr icrnl speed 9600
cat /dev/ttyUSB0 >> ./output.txt

