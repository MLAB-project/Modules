#!/usr/bin/python

# Python library for LTS01A MLAB module with MAX31725 i2c Local Temperature Sensor

#uncomment for debbug purposes
import logging
logging.basicConfig(level=logging.DEBUG) 

import time
import datetime
import sys
from pymlab import config

#### Script Arguments ###############################################

if len(sys.argv) != 2:
    sys.stderr.write("Invalid number of arguments.\n")
    sys.stderr.write("Usage: %s PORT ADDRESS\n" % (sys.argv[0], ))
    sys.exit(1)

port    = sys.argv[1]
address = 0x48
#### Sensor Configuration ###########################################

cfg = config.Config(
    i2c = {
        "port": port,
        "device": None,  # here you can explicitly set I2C driver with 'hid', 'smbus', 'serial'
    },

	bus = [
		{
            "type": "i2chub",
            "address": 0x73,

            "children": [
                {"name": "lts01", "type": "lts01", "address": address, "channel": 1, }
            ],
		},
	],
)

'''
cfg = config.Config(
    i2c = {
        "port": port,
    },
    bus = [
        {
            "name":          "lts01",
            "type":        "lts01",
            "address":        address,
        },
    ],
)
'''


cfg.initialize()

print "LTS01A temperature sensor module example \r\n"
print "Temperature [deg C] \r\n"
sensor = cfg.get_device("lts01")

#### Data Logging ###################################################

try:
    while True:
        sys.stdout.write("LTS01A temp:" + str(sensor.get_temp()) + "\r\n")
        sys.stdout.flush()
        time.sleep(0.5)
except KeyboardInterrupt:
    sys.exit(0)
