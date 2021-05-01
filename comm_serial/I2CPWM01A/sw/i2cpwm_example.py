#!/usr/bin/python

import time
import datetime
import sys
from pymlab import config

#### Script Arguments ###############################################

if len(sys.argv) != 2:
    sys.stderr.write("Invalid number of arguments.\n")
    sys.stderr.write("Usage: %s PORT ADDRESS\n" % (sys.argv[0], ))
    sys.exit(1)

port    = eval(sys.argv[1])

#### Sensor Configuration ###########################################

cfg = config.Config(
    i2c = {
            "port": port,
    },
    bus = [
        {
            "name":        "i2cpwm",
            "type":        "i2cpwm",
        },
    ],
)
cfg.initialize()

print "I2C PWM translator \r\n"
pwm = cfg.get_device("i2cpwm")
time.sleep(0.5)

pwm.set_ls0(0b11111111)
pwm.set_ls1(0b10101010)

frequency = 100

try:
	while True:
		for x in xrange(1,100):
			pwm.set_pwm0(frequency,100-x)
			pwm.set_pwm1(frequency,x)
			time.sleep(0.01)
		for x in xrange(1,100):
			pwm.set_pwm0(frequency,x)
			pwm.set_pwm1(frequency,100-x)
			time.sleep(0.01)

except KeyboardInterrupt:
    sys.exit(0)


