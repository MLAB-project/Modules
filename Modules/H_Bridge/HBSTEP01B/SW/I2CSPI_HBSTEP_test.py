#!/usr/bin/python
# -------------------------------------------
# HBSTEP01B Stepper Motor control test code
# -------------------------------------------
#
# Program uses MLAB Python modules library from https://github.com/MLAB-project/pymlab


#uncomment for debbug purposes
#import logging
#logging.basicConfig(level=logging.DEBUG) 

import sys
import time
from pymlab import config



#### Script Arguments ###############################################

if len(sys.argv) < 2:
    sys.stderr.write("Invalid number of arguments.\n")
    sys.stderr.write("Usage: %s PORT ADDRESS SPEED MOVE_DISTANCE\n" % (sys.argv[0], ))
    sys.exit(1)

elif len(sys.argv) == 2:
    PORT = eval(sys.argv[1])
    SPEED = 50
    DISTANCE = 5000

elif len(sys.argv) == 3:
    SPEED = eval(sys.argv[2])
    DISTANCE = 1000

elif len(sys.argv) == 4:
    SPEED = eval(sys.argv[2])
    DISTANCE = eval(sys.argv[3])

else: 
    PORT = 0
    SPEED = 20
    DISTANCE = 5000


class axis:
    def __init__(self, SPI_CS, Direction, StepsPerUnit, MaxSpeed):
        ' One axis of robot '
        self.CS = SPI_CS
        self.Dir = Direction
        self.SPU = StepsPerUnit
        self.maxspeed = MaxSpeed

        self.L6470_ABS_POS      =0x01
        self.L6470_EL_POS       =0x02
        self.L6470_MARK         =0x03
        self.L6470_SPEED        =0x04
        self.L6470_ACC          =0x05
        self.L6470_DEC          =0x06
        self.L6470_MAX_SPEED    =0x07
        self.L6470_MIN_SPEED    =0x08
        self.L6470_FS_SPD       =0x15
        self.L6470_KVAL_HOLD    =0x09
        self.L6470_KVAL_RUN     =0x0A
        self.L6470_KVAL_ACC     =0x0B
        self.L6470_KVAL_DEC     =0x0C
        self.L6470_INT_SPEED    =0x0D
        self.L6470_ST_SLP       =0x0E
        self.L6470_FN_SLP_ACC   =0x0F
        self.L6470_FN_SLP_DEC   =0x10
        self.L6470_K_THERM      =0x11
        self.L6470_ADC_OUT      =0x12
        self.L6470_OCD_TH       =0x13
        self.L6470_STALL_TH     =0x14
        self.L6470_STEP_MODE    =0x16
        self.L6470_ALARM_EN     =0x17
        self.L6470_CONFIG       =0x18
        self.L6470_STATUS       =0x19

        self.Reset()
        self.Initialize()

    def Reset(self):
        'Reset the Axis'
        spi.SPI_write_byte(self.CS, 0xC0)      # reset

    def Initialize(self):
        'set default parameters for H-bridge '
#        spi.SPI_write_byte(self.CS, 0x14)      # Stall Treshold setup
#        spi.SPI_write_byte(self.CS, 0xFF)  
#        spi.SPI_write_byte(self.CS, 0x13)      # Over Current Treshold setup 
#        spi.SPI_write_byte(self.CS, 0xFF)  
        spi.SPI_write_byte(self.CS, 0x15)      # Full Step speed 
        spi.SPI_write_byte(self.CS, 0xFF)
        spi.SPI_write_byte(self.CS, 0xFF) 
        spi.SPI_write_byte(self.CS, 0x05)      # ACC 
        spi.SPI_write_byte(self.CS, 0x00)
        spi.SPI_write_byte(self.CS, 0x10) 
        spi.SPI_write_byte(self.CS, 0x06)      # DEC 
        spi.SPI_write_byte(self.CS, 0x00)
        spi.SPI_write_byte(self.CS, 0x10) 
        spi.SPI_write_byte(self.CS, self.L6470_KVAL_RUN)      # KVAL_RUN
        spi.SPI_write_byte(self.CS, 0x58)
        spi.SPI_write_byte(self.CS, self.L6470_KVAL_ACC)      # KVAL_ACC
        spi.SPI_write_byte(self.CS, 0x58)
        spi.SPI_write_byte(self.CS, self.L6470_KVAL_DEC)      # KVAL_DEC
        spi.SPI_write_byte(self.CS, 0x58)
#        spi.SPI_write_byte(self.CS, 0x18)      # CONFIG
#        spi.SPI_write_byte(self.CS, 0b00111000)
#        spi.SPI_write_byte(self.CS, 0b00000000)
        self.MaxSpeed(self.maxspeed)

    def setKVAL(self, hold = 0.5, run = 0.5, acc = 0.5, dec = 0.5):
        """ The available range is from 0 to 0.996 x VS with a resolution of 0.004 x VS """

    def setOverCurrentTH(self, hold = 0.5, run = 0.5, acc = 0.5, dec = 0.5):
        """ The available range is from 375 mA to 6 A, in steps of 375 mA """


      
    def MaxSpeed(self, speed):
        'Setup of maximum speed in steps/s. The available range is from 15.25 to 15610 step/s with a resolution of 15.25 step/s.'
        speed_value = int(speed / 15.25)
        if (speed_value <= 0):
            speed_value = 1
        elif (speed_value >= 1023):
            speed_value = 1023

        data = [(speed_value >> i & 0xff) for i in (8,0)]
        print data
        spi.SPI_write_byte(self.CS, self.L6470_MAX_SPEED)       # Max Speed setup 
        spi.SPI_write_byte(self.CS, data[0])
        spi.SPI_write_byte(self.CS, data[1])
        return (speed_value * 15.25)

    def ReleaseSW(self):
        ' Go away from Limit Switch '
        while self.ReadStatusBit(2) == 1:           # is Limit Switch ON ?
            spi.SPI_write_byte(self.CS, 0x92 | (~self.Dir & 1))     # release SW 
            while self.IsBusy():
                pass
            self.MoveWait(10)           # move 10 units away
 
    def GoZero(self, speed):
        ' Go to Zero position '
        self.ReleaseSW()

        spi.SPI_write_byte(self.CS, 0x82 | (self.Dir & 1))       # Go to Zero
        spi.SPI_write_byte(self.CS, 0x00)
        spi.SPI_write_byte(self.CS, speed)  
        while self.IsBusy():
            pass
        time.sleep(0.3)
        self.ReleaseSW()

    def Move(self, units):
        ' Move some distance units from current position '
        steps = units * self.SPU  # translate units to steps 
        if steps > 0:                                          # look for direction
            spi.SPI_write_byte(self.CS, 0x40 | (~self.Dir & 1))       
        else:
            spi.SPI_write_byte(self.CS, 0x40 | (self.Dir & 1)) 
        steps = int(abs(steps))     
        spi.SPI_write_byte(self.CS, (steps >> 16) & 0xFF)
        spi.SPI_write_byte(self.CS, (steps >> 8) & 0xFF)
        spi.SPI_write_byte(self.CS, steps & 0xFF)

    def Run(self, direction, speed):
        speed_value = int(speed / 0.015)
        print hex(speed_value)

        command = 0b01010000 + int(direction)  
        data = [(speed_value >> i & 0xff) for i in (16,8,0)]
        spi.SPI_write_byte(self.CS, command)       # Max Speed setup 
        spi.SPI_write_byte(self.CS, data[0])
        spi.SPI_write_byte(self.CS, data[1])  
        spi.SPI_write_byte(self.CS, data[2])
        return (speed_value * 0.015)

    def MoveWait(self, units):
        ' Move some distance units from current position and wait for execution '
        self.Move(units)
        while self.IsBusy():
            pass

    def Float(self, hard = False):
        ' switch H-bridge to High impedance state '
        if (hard == False):
            spi.SPI_write_byte(self.CS, 0xA0)
        else:
            spi.SPI_write_byte(self.CS, 0xA8)

    def ReadStatusBit(self, bit):
        ' Report given status bit '
        spi.SPI_write_byte(self.CS, 0x39)   # Read from address 0x19 (STATUS)
        spi.SPI_write_byte(self.CS, 0x00)
        data0 = spi.SPI_read_byte()           # 1st byte
        spi.SPI_write_byte(self.CS, 0x00)
        data1 = spi.SPI_read_byte()           # 2nd byte
        #print hex(data0), hex(data1)
        if bit > 7:                                   # extract requested bit
            OutputBit = (data0 >> (bit - 8)) & 1
        else:
            OutputBit = (data1 >> bit) & 1        
        return OutputBit

    
    def IsBusy(self):
        """ Return True if tehre are motion """
        if self.ReadStatusBit(1) == 1:
            return False
        else:
            return True

# End Class axis --------------------------------------------------



cfg = config.Config(
    i2c = {
        "port": 1,
    },

    bus = [
        { 
        "name":"spi", 
        "type":"i2cspi", 
        "address": 0x2e,
        },
    ],
)


cfg.initialize()

print "Stepper motor control test started. \r\n"
print "Max motor speed: %d " % SPEED
print "Distance to run: %d " % DISTANCE

spi = cfg.get_device("spi")

spi.route()

try:
    print "SPI configuration.."
    spi.SPI_config(spi.I2CSPI_MSB_FIRST| spi.I2CSPI_MODE_CLK_IDLE_HIGH_DATA_EDGE_TRAILING| spi.I2CSPI_CLK_461kHz)
    time.sleep(1)

    print "Axis inicialization"
    X = axis(spi.I2CSPI_SS0, 0, 1, MaxSpeed = SPEED)    # set Number of Steps per axis Unit and set Direction of Rotation
    X.MaxSpeed(SPEED)                      # set maximal motor speed 

    print "Axis is running"

    for i in range(5):
        print i
        X.MoveWait(DISTANCE)      # move forward and wait for motor stop
        print "Changing direction of rotation.."
        X.MoveWait(-DISTANCE)     # move backward and wait for motor stop
        print "Changing direction of rotation.."

    time.sleep(1)

    X.Run(1, SPEED/2)

    time.sleep(5)

    X.Float(hard = False)   # release power


finally:
    print "stop"
