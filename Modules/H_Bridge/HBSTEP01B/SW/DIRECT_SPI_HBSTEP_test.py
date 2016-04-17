#!/usr/bin/python
# -------------------------------------------
# HBSTEP01B Stepper Motor control test code
# -------------------------------------------
#
# Program uses MLAB Python modules library from https://github.com/MLAB-project/pymlab


#uncomment for debbug purposes
import logging
logging.basicConfig(level=logging.DEBUG) 

import sys
import time
import spidev

#### Script Arguments ###############################################

if len(sys.argv) < 2:
    sys.stderr.write("Invalid number of arguments.\n")
    sys.stderr.write("Usage: %s PORT ADDRESS SPEED MOVE_DISTANCE\n" % (sys.argv[0], ))
    sys.exit(1)

elif len(sys.argv) == 2:
    PORT = eval(sys.argv[1])
    SPEED = 5
    DISTANCE = 50

elif len(sys.argv) == 3:
    SPEED = eval(sys.argv[2])
    DISTANCE = 100

elif len(sys.argv) == 4:
    SPEED = eval(sys.argv[2])
    DISTANCE = eval(sys.argv[3])

else: 
    PORT = 0
    SPEED = 10
    DISTANCE = 50

class axis:
    def __init__(self, SPI_handler, Direction, StepsPerUnit, MaxSpeed):
        ' One axis of robot '
        self.spi = SPI_handler
        self.Dir = Direction
        self.SPU = StepsPerUnit
        self.maxseed = MaxSpeed
        self.Reset()
        self.Initialize()

    def Reset(self):
        'Reset the Axis'
        self.spi.xfer([0xC0])      # reset

    def Initialize(self):
        'set default parameters for H-bridge '
#        self.spi.xfer( 0x14)      # Stall Treshold setup
#        self.spi.xfer( 0xFF)  
#        self.spi.xfer( 0x13)      # Over Current Treshold setup 
#        self.spi.xfer( 0xFF)  
        self.spi.xfer([0x15])      # Full Step speed 
        self.spi.xfer([0xFF])
        self.spi.xfer([0xFF]) 
        self.spi.xfer([0x05])      # ACC 
        self.spi.xfer([0x00])
        self.spi.xfer([0x10]) 
        self.spi.xfer([0x06])      # DEC 
        self.spi.xfer([0x00])
        self.spi.xfer([0x10]) 
        self.spi.xfer([0x0A])      # KVAL_RUN
        self.spi.xfer([0x50])
        self.spi.xfer([0x0B])      # KVAL_ACC
        self.spi.xfer([0x50])
        self.spi.xfer([0x0C])      # KVAL_DEC
        self.spi.xfer([0x50])
 #       self.spi.xfer([0x18])      # CONFIG
 #       self.spi.xfer([0b00111000])
 #       self.spi.xfer([0b00000000])
      
    def MaxSpeed(self, speed):
        'Setup of maximum speed in steps/s'
        speed_value = int(speed / 15.25)
        if (speed_value == 0):
            speed_value = 1
        print hex(speed_value)

        data = [(speed_value >> i & 0xff) for i in (16,8,0)]
        self.spi.xfer([data[0]])       # Max Speed setup 
        self.spi.xfer([data[1]])
        self.spi.xfer([data[2]])
        return (speed_value * 15.25)

    def ReleaseSW(self):
        ' Go away from Limit Switch '
        while self.ReadStatusBit(2) == 1:           # is Limit Switch ON ?
            self.spi.xfer([0x92 | (~self.Dir & 1)])     # release SW 
            while self.GetStatus()['BUSY']:
                pass
            self.MoveWait(10)           # move 10 units away
 
    def GoZero(self, speed):
        ' Go to Zero position '
        self.ReleaseSW()
        self.spi.xfer([0x82 | (self.Dir & 1)])       # Go to Zero
        self.spi.xfer([0x00])
        self.spi.xfer([speed])  
        while self.GetStatus()['BUSY']:
            pass
        time.sleep(0.3)
        self.ReleaseSW()

    def GetStatus(self):
        #self.spi.xfer([0b11010000])  # Get status command from datasheet - does not work for uknown rasons
        self.spi.xfer([0x39])       # Gotparam  command on status register
        data = self.spi.readbytes(1)
        data = data + self.spi.readbytes(1)

        status = dict([('SCK_MOD',data[0] & 0x80 == 0x80),  #The SCK_MOD bit is an active high flag indicating that the device is working in Step-clock mode. In this case the step-clock signal should be provided through the STCK input pin. The DIR bit indicates the current motor direction
                    ('STEP_LOSS_B',data[0] & 0x40 == 0x40),
                    ('STEP_LOSS_A',data[0] & 0x20 == 0x20),
                    ('OCD',data[0] & 0x10 == 0x10),
                    ('TH_SD',data[0] & 0x08 == 0x08),
                    ('TH_WRN',data[0] & 0x04 == 0x04),
                    ('UVLO',data[0] & 0x02 == 0x02),
                    ('WRONG_CMD',data[0] & 0x01 == 0x01),   #The NOTPERF_CMD and WRONG_CMD flags are active high and indicate, respectively, that the command received by SPI cannot be performed or does not exist at all.
                    ('NOTPERF_CMD',data[1] & 0x80 == 0x80),
                    ('MOT_STATUS',data[1] & 0x60),
                    ('DIR',data[1] & 0x10 == 0x10),
                    ('SW_EVN',data[1] & 0x08 == 0x08),
                    ('SW_F',data[1] & 0x04 == 0x04),        #The SW_F flag reports the SW input status (low for open and high for closed).
                    ('BUSY',data[1] & 0x02 != 0x02),
                    ('HIZ',data[1] & 0x01 == 0x01)])
        return status

    def Move(self, units):
        ' Move some distance units from current position '
        steps = units * self.SPU  # translate units to steps 
        if steps > 0:                                          # look for direction
            self.spi.xfer([0x40 | (~self.Dir & 1)])       
        else:
            self.spi.xfer([0x40 | (self.Dir & 1)]) 
        steps = int(abs(steps))     
        self.spi.xfer([(steps >> 16) & 0xFF])
        self.spi.xfer([(steps >> 8) & 0xFF])
        self.spi.xfer([steps & 0xFF])

    def Run(self, direction, speed):
        speed_value = int(speed / 0.015)
        print hex(speed_value)

        data = [0b01010000 + direction]
        data = data +[(speed_value >> i & 0xff) for i in (16,8,0)]
        self.spi.xfer([data[0]])       # Max Speed setup 
        self.spi.xfer([data[1]])
        self.spi.xfer([data[2]])  
        self.spi.xfer([data[3]])
        return (speed_value * 0.015)

    def MoveWait(self, units):
        ' Move some distance units from current position and wait for execution '
        self.Move(units)
        while self.GetStatus()['BUSY']:
            pass
            time.sleep(0.8)

    def Float(self, hard = False):
        ' switch H-bridge to High impedance state '
        if (hard == False):
            self.spi.xfer([0xA0])
        else:
            self.spi.xfer([0xA8])


# End Class axis --------------------------------------------------

print "Stepper motor control test started. \r\n"
print "Max motor speed: %f " % SPEED
print "Distance to run: %f " % DISTANCE

try:
    print "SPI configuration.."
    spi = spidev.SpiDev() # create a spi object
    spi.open(0, 0) # open spi port 0, device (CS) 0 
    spi.mode = 0b01
    spi.lsbfirst = False
    spi.bits_per_word = 8
    spi.cshigh = False
    spi.max_speed_hz = 100000
    #spi.SPI_config(spi.I2CSPI_MSB_FIRST| spi.I2CSPI_MODE_CLK_IDLE_HIGH_DATA_EDGE_TRAILING| spi.I2CSPI_CLK_461kHz)
    time.sleep(1)

    print "Axis inicialization"
    X = axis(spi, 0, 641, MaxSpeed = SPEED)    # set Number of Steps per axis Unit and set Direction of Rotation

    print X.MaxSpeed(SPEED)                      # set maximal motor speed 

    #print X.Run(1, 200.456431)
    #time.sleep(10)
    
    print "Axis is running"
    for i in range(5):
        print i
        X.MoveWait(DISTANCE)      # move forward and wait for motor stop
        print "Changing direction of rotation.."
        time.sleep(1.1)
        X.MoveWait(-DISTANCE)     # move backward and wait for motor stop
        print "Changing direction of rotation.."
        time.sleep(1.1)
    
    X.Float(hard=False)   # release power

finally:
    print "stop"
