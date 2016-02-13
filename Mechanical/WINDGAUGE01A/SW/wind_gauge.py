#!/usr/bin/python

# Python library for RPS01A MLAB module with AS5048B I2C Magnetic position sensor.

#uncomment for debbug purposes
#import logging
#logging.basicConfig(level=logging.DEBUG) 

import time
import datetime
import sys
import numpy as np
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
    angles = np.zeros(5)
    angles[4] = sensor.get_angle(verify = False)
    time.sleep(0.01)
    angles[3] = sensor.get_angle(verify = False)
    time.sleep(0.01)
    angles[2] = sensor.get_angle(verify = False)
    time.sleep(0.01)
    angles[1] = sensor.get_angle(verify = False)
    n = 0
    speed = 0
    AVERAGING = 50

    while True:
        for i in range(AVERAGING):
            time.sleep(0.01)
            angles[0] = sensor.get_angle(verify = False)
            
            if (angles[0] + n*360 - angles[1]) > 300:
                n -= 1
                angles[0] = angles[0] + n*360

            elif (angles[0] + n*360 - angles[1]) < -300:  # compute angular speed in backward direction.
                n += 1
                angles[0] = angles[0] + n*360

            else:
                angles[0] = angles[0] + n*360
            
            speed += (-angles[4] + 8*angles[3] - 8*angles[1] + angles[0])/12
            angles = np.roll(angles, 1)

        speed = speed/AVERAGING             # apply averaging on acummulated value.
        print "Speed: %0.2f \t Total Angle: %0.2f \r\n" % (speed, angles[0])

except KeyboardInterrupt:
    sys.exit(0)
