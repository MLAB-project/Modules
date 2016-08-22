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

    if oldstav == 0 and stav == 0:
      subprocess.call("shutdown -P 1", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    else:
	print "power is OK."
    
    oldstav = stav

    time.sleep(2)


