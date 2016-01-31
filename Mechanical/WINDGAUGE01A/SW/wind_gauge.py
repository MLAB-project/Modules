#!/usr/bin/python

# Python library for RPS01A MLAB module with AS5048B I2C Magnetic position sensor.

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
                {"name": "encoder", "type": "rps01", "channel": 1, }
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
            "name":          "encoder",
            "type":        "rps01",
        },
    ],
)


cfg.initialize()

print "RPS01A magnetic position sensor RPS01 readout example \r\n"
sensor = cfg.get_device("encoder")

print sensor.get_address()
print sensor.get_zero_position() 

#### Data Logging ###################################################

try:
    while True:
#        for i in range(10):
        angle1 = sensor.get_angle(verify = False)
        time.sleep(0.1)
        angle2 = sensor.get_angle(verify = False)
        time.sleep(0.1)
        angle3 = sensor.get_angle(verify = False)
        
        if (angle1 < angle2):
            speed = (angle2 - angle1)/0.01
        else:
            speed = (360 - angle1 + angle2)/0.01
            
    
        
        sys.stdout.write("Speed: " + str(speed) +"\t"+ str(angle1) +"\t"+ str(angle2) + "\t\tMagnitude: " + str(sensor.get_magnitude()) 
            + "\tAGC Value: " + str(sensor.get_agc_value()) + "\tDiagnostics: " + str(sensor.get_diagnostics()) + "\r\n")
        sys.stdout.flush()
        time.sleep(0.01)
except KeyboardInterrupt:
    sys.exit(0)
