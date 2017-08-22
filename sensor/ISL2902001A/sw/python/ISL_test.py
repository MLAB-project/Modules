#!/usr/bin/python

# Python library for ISL2902001A MLAB module with I2C light sensor.

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

cfg = config.Config(
    i2c = {
        "port": port,
    },
    bus = [
        {
            "name":          "sensor",
            "type":        "ISL01",
        },
    ],
)


cfg.initialize()

print "ISL2902001A light senzor readout example \r\n"
sensor = cfg.get_device("sensor")

#### Data Logging ###################################################

try:
    while True:
        sys.stdout.write("IR Light intensity: " + str(sensor.get_lux_IR()) + \"\r\n")
        sys.stdout.flush()
        time.sleep(0.2)
except KeyboardInterrupt:
    sys.exit(0)
