#!/usr/bin/python

# Python example of use pymlab with LIONCELL MLAB module

import time
import sys
from pymlab import config

import pandas as pd  # data parsing library
import struct

filename = './guage.csv'

df = pd.read_csv(filename,delimiter=',')  

def ReadFlash(ID, offset, name, typ, units, default):
    flash = guage.ReadFlashBlock(ID, offset // 32)
    print ID, '\t', offset, '\t', '"', '{:32s}'.format(name), '"', '\t', typ, '\t',
    # if (offset // 32) > 0 :
    offset = offset - 32 * (offset // 32)
    if typ == 'U1':
        print '{:10d}'.format(flash[offset]),
    if typ == 'I1':
        if flash[offset] > 127:
            ble = (256-flash[offset]) * (-1)
        else:
            ble = flash[offset]
        print '{:10d}'.format(ble),
    if typ == 'I2':
        ble = (flash[offset]<<8)+flash[offset+1]
        if ble > 32767:
            ble = (65536-ble) * (-1)
        print '{:10d}'.format(ble),
    if typ == 'U2':
        print '{:10d}'.format(abs((flash[offset]<<8)+flash[offset+1])),
    if typ == 'F4':
        print  '{:10s}'.format(hex(0x1000000*flash[offset]+0x10000*flash[(offset+1)]+0x100*flash[(offset+2)]+flash[(offset+3)])),
        #print '{:10f}'.format(struct.unpack('@f', chr(flash[offset])+chr(flash[offset+1])+chr(flash[offset+2])+chr(flash[offset+3]))[0]),
    if typ == 'H1':
        print  '{:10s}'.format(hex(flash[(offset)])),
    if typ == 'H2':
        print  '{:10s}'.format(hex(0x100*flash[(offset)]+flash[(offset+1)])),
    if typ == 'H4':
        print  '{:10s}'.format(hex(0x1000000*flash[offset]+0x10000*flash[(offset+1)]+0x100*flash[(offset+2)]+flash[(offset+3)])),
    if typ == 'S9':
        string = ''
        for n in range(9):
            string = string + chr(flash[offset+n+1])
        print  '{:12s}'.format(string+'\0'),
    if typ == 'S12':
        string = ''
        for n in range(9):
            string = string + chr(flash[offset+n+1])
        print  '{:12s}'.format(string+'...\0'),
    if typ == 'S5':
        string = ''
        for n in range(5):
            string = string + chr(flash[offset+n+1])
        print  '{:12s}'.format(string+'\0'),
    print '{:10s}'.format('['+units+']'),  '\t', default, '{:10s}'.format('['+units+']')


#### Sensor Configuration ###########################################
cfg = config.Config(
    i2c = {
        "port": 0, # I2C bus number
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

print "Pack Configuration", hex(guage.PackConfiguration())

#flash = guage.ReadFlashBlock(112, 0)
#print "112 - ",
#print " ".join([hex(i) for i in flash])

#ReadFlash(2, 0, 'OT Chg', 'I2', '0.1 degC')
#ReadFlash(112, 8, 'Authen Key3', 'H4', '-')

for i in range(len(df)):
    ReadFlash(df['SubclassID'][i], df['Offset'][i], df['Name'][i], df['DataType'][i], df['Units'][i], df['DefaultValue'][i])


while True:
    # Battery status readout
    print "NominalAvailableCapacity =", guage.NominalAvailableCapacity(), "mAh, FullAvailabeCapacity =", guage.FullAvailabeCapacity(), "mAh, AvailableEnergy =", guage.AvailableEnergy(), "* 10 mWh"
    print "Temp =", guage.getTemp(), "degC, RemainCapacity =", guage.getRemainingCapacity(), "mAh, cap =", guage.FullChargeCapacity(), "mAh, U =", guage.Voltage(), "mV, I =", guage.AverageCurrent(), "mA, charge =", guage.StateOfCharge(), "%"
    time.sleep(3)


