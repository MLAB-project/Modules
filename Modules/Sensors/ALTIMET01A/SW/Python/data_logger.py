#!/usr/bin/python

# Python driver for MLAB MAG01A module with HMC5888L Magnetometer sensor wrapper class

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
	bus = [
#		{
#		    "type": "i2chub",
#		    "address": 0x70,
#		    
#		    "children": [
#				{
#					"type": "i2chub",
#					"address": 0x70,
#					"channel": 1,
#					
#				},
#		    ],
#		},

        {
            "name":          "altimet",
            "type":        "altimet01",
        },


	],
)
cfg.initialize()

gauge = cfg.get_device("altimet")


#### Data Logging ###################################################

try:
    with open("temperature.log", "a") as f:
        while True:
	    sys.stdout.write("Start measurement now? [ENTER]")
            sys.stdin.readline()
            (t, p) = gauge.get_tp()
            sys.stdout.write(" Temperature: %.2f  Pressure: %d Note: " % (t, p, ))
            note = sys.stdin.readline()
            f.write("%d\t%s\t%.2f\t%d\t%s\n" % (time.time(), datetime.datetime.now().isoformat(), t, p, note, ))
            sys.stdout.flush()
            time.sleep(0.5)
except KeyboardInterrupt:
    sys.exit(0)

