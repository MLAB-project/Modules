#!/bin/bash
echo "Openning serial line"
stty -F /dev/ttyUSB0 igncr -echo onocr icrnl speed 9600
./read.sh &
sleep 5

while true; do
echo -e "Time measurement..... "
  echo -e "M2 3\r\n" >  "/dev/ttyUSB0"
  sleep 1
  echo -e "Temperature measurement \r\n"
  echo -e "TM\r\n" >  "/dev/ttyUSB0"
  sleep 5
done 

