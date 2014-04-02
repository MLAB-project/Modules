#!/usr/bin/python

# Python example utility for MLAB ALTIMET01A testing bed with DPI145.

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
                {
                    "type": "i2chub",
                    "address": 0x70,
                    "channel": 3,
                    "children": [
                                {"name": "altimet1", "type": "altimet01" , "channel": 0, },   
                                {"name": "altimet2", "type": "altimet01" , "channel": 3, },   
                                {"name": "altimet3", "type": "altimet01" , "channel": 4, },   
                                {"name": "altimet4", "type": "altimet01" , "channel": 5, },   
                                {"name": "altimet5", "type": "altimet01" , "channel": 6, },   
                                {"name": "altimet6", "type": "altimet01" , "channel": 7, },   
                    ], 
                },
                {"name": "altimet8", "type": "altimet01" , "channel": 6, },
            ],
        },

#        {
#            "type": "i2chub",
#            "address": 0x72,
#           "children": [
#                   {"name": "altimet", "type": "altimet01" , "channel": 6, },
#        ],
#       },


    ],
)
cfg.initialize()

gauge1 = cfg.get_device("altimet1")
gauge2 = cfg.get_device("altimet2")
gauge3 = cfg.get_device("altimet3")
gauge4 = cfg.get_device("altimet4")
gauge5 = cfg.get_device("altimet5")
gauge6 = cfg.get_device("altimet6")

gauge8 = cfg.get_device("altimet8")
time.sleep(0.5)

#### Data Logging ###################################################

sys.stdout.write("ALTIMET data acquisition system started \n")
ser = serial.Serial('/dev/ttyUSB0', 9600, timeout=1)

try:
    with open("temperature.log", "a") as f:
        while True:
            sys.stdout.write("Start measurement now? [ENTER]")
            sys.stdin.readline()

            ser.write(':DISP?\n')
            Prefstart = eval(ser.readline(100))

            gauge1.route()
            (t1, p1) = gauge1.get_tp()
            gauge2.route()
            (t2, p2) = gauge2.get_tp()
            gauge3.route()
            (t3, p3) = gauge3.get_tp()
            gauge4.route()
            (t4, p4) = gauge4.get_tp()
            gauge5.route()
            (t5, p5) = gauge5.get_tp()
            gauge6.route()
            (t6, p6) = gauge6.get_tp()
#            gauge7.route()
#            (t7, p7) = gauge7.get_tp()
            gauge8.route()
            (t8, p8) = gauge8.get_tp()

            ser.write(':DISP?\n')
            Prefstop = eval(ser.readline(100))

            sys.stdout.write(" Temperature: %.2f %.2f %.2f %.2f %.2f %.2f %.2f   Pressure: %d %d %d %d %d %d %d %s %s Note: " % (t1, t2, t3, t4, t5, t6, t8, p1, p2, p3, p4, p5, p6, p8, Prefstart,  Prefstop ))
            note = sys.stdin.readline()
            f.write("%d\t%s\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%s\t%s\t%s\n" % (time.time(), datetime.datetime.now().isoformat(),t1, t2, t3, t4, t5, t6, t8, p1, p2, p3, p4, p5, p6, p8, Prefstart, Prefstop, note, ))
            sys.stdout.flush()
#            time.sleep(0.5)
            
except KeyboardInterrupt:
    ser.close()
    sys.exit(0)

