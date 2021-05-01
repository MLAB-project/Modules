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
    filen = 'log%0.0f.txt'%time.time()
    f = open(filen,'w')
    os.remove("last.txt")
    os.symlink(filen, "last.txt")

    gpsp = GpsPoller()
    gpsp.start()

    while True:
        w_spd = abs(sensor.get_speed())
        g_spd = abs(gpsd.fix.speed())

        print "W_Spd: %.3f \t G_Spd %.3f \t multiplayer: %.3f \t multiplayer: %.3f" % (w_spd, g_spd, w_spd/g_spd, g_spd/w_spd)
        f.write("%.3f %.3f %.3f\r\n" %(time.time(), w_spd, g_spd))
        f.flush()


except KeyboardInterrupt:
    gpsp.running = False
    gpsp.join()
    sys.exit(0)
