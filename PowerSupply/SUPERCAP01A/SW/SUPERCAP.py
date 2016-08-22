#!/usr/bin/python
import wiringpi2 as gpio
import time
import subprocess

gpio.wiringPiSetupGpio()
gpio.pinMode(88, 0)
gpio.pullUpDnControl(88, 0)


oldstav = gpio.digitalRead(88)

while True:
    stav = gpio.digitalRead(88)

    if stav != oldstav and stav == 0:
      subprocess.call("shutdown -P 1", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      oldstav = stav

    time.sleep(1)


