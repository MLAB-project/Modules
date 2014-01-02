#!/bin/bash
echo "Connect blank PICPROGUSB02As self ISP to another PICPROGUSB02A or Pickit 2 programmer"
read
pk2cmd -PPIC18F2550 -M -Y -W -F./PK2V023200.hex
