#!/usr/bin/python

# Python library for I2CHUB02A MLAB module with TCA9548A i2c bus expander. 

import smbus
import time

I2CHUB_address = 0x70
I2CHUB_bus_number = 6

i2c_channel_setup=0

I2C_ch_0 = 0b00000001
I2C_ch_1 = 0b00000010
I2C_ch_2 = 0b00000100
I2C_ch_3 = 0b00001000
I2C_ch_4 = 0b00010000
I2C_ch_5 = 0b00100000
I2C_ch_6 = 0b01000000
I2C_ch_7 = 0b10000000


def I2CHUB_setup(i2c_channel_setup):
  bus = smbus.SMBus(I2CHUB_bus_number)
  bus.write_byte(I2CHUB_address,i2c_channel_setup)
  time.sleep(0.1)
  print "I2C hub channel status: ", bin(bus.read_byte(I2CHUB_address))
return;
