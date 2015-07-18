#!/usr/bin/python
"""
Testbed for the animation.

It basically produces series of temperatures that get animated on the client
browser side.

"""

import time
import sys
from pymlab import config

import matplotlib
matplotlib.use('module://mplh5canvas.backend_h5canvas')
from pylab import *
import time
import numpy as np

t = [1 + i for i in range(0, 70)]
s = [-30 + i for i in range(0, 70)]

plot(t, s, linewidth=3.0)
xlabel('time (s)')
ylabel('temperature (C)')
title('Temperature')
f = gcf()
ax = f.gca()

show(block=False)
 # show the figure manager but don't block script execution so animation works..


while True:
    #### Sensor Configuration ###########################################
    cfg = config.Config(
        i2c = {
            "port": 0, # I2C bus number
        },

	    bus = [
                {
                 "name": "adc",
                 "type": "i2cadc01", 
                 #"channel": 7, 
                },
            ],
    )


    cfg.initialize()
    adc = cfg.get_device("adc")

    n =  t[-1] + 1
    try:
        while True:
            # Temperature readout
            temperature = adc.readTemp()
            print "Internal Temperature =", float("{0:.2f}".format(temperature))

            time.sleep(0.5)

            # Voltage readout
            voltage = adc.readADC()
            temp = (voltage / 0.0000397) + temperature   #temperrature calculation for K type thermocouple
            print "Voltage =", voltage, ",  K-type thermocouple Temperature =", float("{0:.2f}".format(temp))

            time.sleep(0.5)

            # refresh graph
            s = s[1:] + [temp]
            t = t[1:] + [n]
            n += 1
            if (n % 10) == 0:
                ax.text(n, temp-5, "{0:.1f}".format(temp),
                verticalalignment='bottom', horizontalalignment='right',
                color='green', fontsize=16)

            ax.lines[0].set_xdata(t)
            ax.lines[0].set_ydata(s)
            ax.set_xlim(t[0],t[-1])
            f.canvas.draw()
            time.sleep(0.5)


    except IOError:
        print "IOError"
        continue

    except KeyboardInterrupt:
    	sys.exit(0)


