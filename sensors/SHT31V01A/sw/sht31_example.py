#!/usr/bin/python

# Python library for SHT3101A MLAB module with SHT31 Temperature and relative humidity sensor.

#uncomment for debbug purposes
#import logging
#logging.basicConfig(level=logging.DEBUG) 

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

''''
cfg = config.Config(
    i2c = {
        "port": port,
    },

	bus = [
		{
            "type": "i2chub",
            "address": 0x72,
            
            "children": [
                {"name": "sht", "type": "sht31", "channel": 1, }
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
            "name":          "sht",
            "type":        "sht31",
        },
    ],
)


cfg.initialize()

print "SHT31 sensor readout example \r\n"
sensor = cfg.get_device("sht")

sensor.soft_reset()
time.sleep(0.1)

#### Data Logging ###################################################

try:
    while True:
        sys.stdout.write("Sensor status: " + str(sensor.get_status()) + " Temperature and Humidity: " + str(sensor.get_TempHum()) + "\r\n")
        sys.stdout.flush()
        time.sleep(1)
except KeyboardInterrupt:
    sys.exit(0)
