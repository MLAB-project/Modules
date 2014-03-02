#!/usr/bin/python

# Python test script for MLAB ALTIMET01A sensor

import time
import datetime
import sys
import serial

from pymlab import config


#### Script Arguments ###############################################

if len(sys.argv) != 2:
    sys.stderr.write("Invalid number of arguments.\n")
    sys.stderr.write("Usage: %s #I2CPORT\n" % (sys.argv[0], ))
    sys.exit(1)

port    = eval(sys.argv[1])


#### Sensor Configuration ###########################################

cfg = config.Config(
    port = port,
    bus = [
        {
            "type": "i2chub",
            "address": 0x72,
            
            "children": [
                {"name": "altimet", "type": "altimet01" , "channel": 7, },   
            ],
        },
    ],
)
cfg.initialize()
gauge = cfg.get_device("altimet")
time.sleep(0.5)

#### Data Logging ###################################################

sys.stdout.write("ALTIMET data acquisition system started \n")

try:
    with open("temperature.log", "a") as f:
        while True:
            gauge.route()
            (t1, p1) = gauge.get_tp()
            sys.stdout.write(" Temperature: %.2f  Pressure: %d \n" % (t1, p1))
            sys.stdout.flush()
#            time.sleep(0.5)
            
except KeyboardInterrupt:
    ser.close()
    sys.exit(0)

