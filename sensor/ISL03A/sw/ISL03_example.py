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
            "name":          "light",
            "type":        "isl03",
	    "address":       0x48,
        },
    ],
)
cfg.initialize()

print "LTS2902001A light sensor example \r\n"
print "Light [%%]  \r\n"
sensor = cfg.get_device("light")
time.sleep(0.5)


sensor.config(0x0000)

i=0

#### Data Logging ###################################################

try:
    while True:
        sys.stdout.write("Sensor status: " + str(sensor.get_lux()) + "\n")
        sys.stdout.flush()
        time.sleep(1)
except KeyboardInterrupt:
    sys.exit(0)


