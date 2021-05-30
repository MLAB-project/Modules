#!/usr/bin/python

# Setuup of LION1CELL MLAB module

import time
import sys
from pymlab import config

while True:
    #### Sensor Configuration ###########################################
    cfg = config.Config(
        i2c = {
            "port": 6, # I2C bus number
        },

	    bus = [
		    {
                "type": "i2chub",
                "address": 0x73,

                "children": [
                    {"name": "guage", "type": "lioncell", "channel": 7, },
                ],
		    },
	    ],
    )


    cfg.initialize()
    guage = cfg.get_device("guage")


    guage.WriteFlashByte(48, 0, 21, 0x0D)    # Design Capacity 3350 mAh
    guage.WriteFlashByte(48, 0, 22, 0x16)    #
    print("Design Capacity")
    guage.WriteFlashByte(48, 0, 23, 0x5E)    # Design Energy 12060 mWh
    guage.WriteFlashByte(48, 0, 24, 0x38)    #
    print("Design Energy")
    #guage.WriteFlashByte(64, 0, 0, 0x9)      # External Voltage Measurement
    #print "External Voltage Measurement"
    #guage.WriteFlashByte(64, 0, 7, 0x2)      # Two Cells
    #print "Two Cells"
    guage.WriteFlashByte(64, 0, 4, 0x64)     # 7 LED (1+6), Shift Register
    print("LED")
    #guage.WriteFlashByte(104, 0, 14, 0x28)   # Voltage Measurement Range 10240 mV
    #guage.WriteFlashByte(104, 0, 15, 0x00)   #
    #print "Voltage Measurement Range"
    guage.WriteFlashByte(82, 0, 0, 0x0D)     # Set initial cell capacity 3350 mAh
    guage.WriteFlashByte(82, 0, 1, 0x16)     #
    print("Initial cell capacity")
    guage.WriteFlashByte(83, 0, 0, 0x20)     # Set Chem ID
    guage.WriteFlashByte(83, 0, 1, 0x17)     #
    print("Chem ID")
    guage.reset()                            # Reset Guage
    print("Reset")
    time.sleep(1)

    flash = guage.ReadFlashBlock(48, 0)
    print("48 - ")
    print(" ".join([hex(i) for i in flash]))
    flash = guage.ReadFlashBlock(64, 0)
    print("64 - ")
    print(" ".join([hex(i) for i in flash]))
    flash = guage.ReadFlashBlock(104, 0)
    print("104 - ")
    print(" ".join([hex(i) for i in flash]))

    print("DesCap =", guage.DesignCapacity(), "mAh")
    flash = guage.Chemistry()
    print("Chemistry = ")
    print(" ".join([hex(i) for i in flash]))

    try:
        while True:
            # Battery status readout
            print("NominalAvailableCapacity =", guage.NominalAvailableCapacity(), "mAh, FullAvailabeCapacity =", guage.FullAvailabeCapacity(), "mAh, AvailableEnergy =", guage.AvailableEnergy(), "* 10 mWh")
            print("Temp =", guage.getTemp(), "degC, RemainCapacity =", guage.getRemainingCapacity(), "mAh, cap =", guage.FullChargeCapacity(), "mAh, U =", guage.Voltage(), "mV, I =", guage.AverageCurrent(), "mA, charge =", guage.StateOfCharge(), "%")
            time.sleep(3)

    except IOError:
        err = err + 1
        print("IOError")
        continue

    except KeyboardInterrupt:
    	sys.exit(0)
