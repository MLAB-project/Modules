#!/usr/bin/python

# plot with >> plot 'last.txt' u 1:2 w l axes x1y1, 'last.txt' u 1:4 w l axes x1y2, 'last.txt' u 1:3

import os
import time
import datetime
import sys
import numpy as np
from gps import *
from pymlab import config
import threading

gpsd = None

class GpsPoller(threading.Thread):
  def __init__(self):
    threading.Thread.__init__(self)
    global gpsd #bring it in scope
    gpsd = gps(mode=WATCH_ENABLE)
    self.current_value = None
    self.running = True
 
  def run(self):
    global gpsd
    while gpsp.running:
      gpsd.next()
 



cfg = config.Config(
    i2c = {
        "port": 1,
    },
    bus = [
        {
            "name":          "rps",
            "type":        "rps01",
        },
    ],
)


cfg.initialize()

print "RPS01A logger"
sensor = cfg.get_device("rps")


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
    
    filen = 'log%0.0f.txt'%time.time()
    f = open(filen,'w')
    os.remove("last.txt")
    os.symlink(filen, "last.txt")
    
    gpsp = GpsPoller()
    gpsp.start()

    while True:
        for i in range(AVERAGING):
            time.sleep(0.01)
            angles[0] = sensor.get_angle(verify = False)
            
            if (angles[0] + n*360 - angles[1]) > 300:
                n -= 1
                angles[0] = angles[0] + n*360

            elif (angles[0] + n*360 - angles[1]) < -300: 
                n += 1
                angles[0] = angles[0] + n*360

            else:
                angles[0] = angles[0] + n*360
            
            speed += (-angles[4] + 8*angles[3] - 8*angles[1] + angles[0])/12
            angles = np.roll(angles, 1)
	
	speed = speed/AVERAGING

        g_spd = gpsd.fix.speed
        print "W_Spd: %0.2f \t Angle: %0.2f \t  G_Spd %0.2f" % (speed, angles[0], g_spd)
        f.write("%0.2f %0.2f %0.2f %0.2f\r\n" %(time.time(), abs(speed), angles[0], g_spd))
        f.flush()
	

except KeyboardInterrupt:
    gpsp.running = False
    gpsp.join()
    sys.exit(0)
