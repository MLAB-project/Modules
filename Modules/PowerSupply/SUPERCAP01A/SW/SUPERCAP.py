#!/usr/bin/python
import wiringpi2 as gpio
import time
import subprocess

power_sense_pin = 83

gpio.wiringPiSetupGpio()
gpio.pinMode(power_sense_pin, 0)
gpio.pullUpDnControl(power_sense_pin, 0)

time.sleep(30)          # wait for complete startup. 

oldstav = gpio.digitalRead(power_sense_pin)

while True:
    stav = gpio.digitalRead(power_sense_pin)

    if oldstav == 0 and stav == 0:
      subprocess.call("shutdown -P 0", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      exit(0)
    else:
	print "power is OK."

    oldstav = stav

    time.sleep(2)


