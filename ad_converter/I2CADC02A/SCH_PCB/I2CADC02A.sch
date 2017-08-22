EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:Smart_ExtruderV1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6350 3750 6250 3750
Wire Wire Line
	6250 3850 6350 3850
Wire Wire Line
	5900 4250 5900 4200
Wire Wire Line
	5700 4250 5900 4250
Wire Wire Line
	5800 4200 5800 4300
Wire Wire Line
	4000 3700 5250 3700
Text GLabel 6350 3850 2    60   Input ~ 0
SCL
Text GLabel 6350 3750 2    60   Input ~ 0
SDA
$Comp
L GND #PWR?
U 1 1 55B13F8B
P 5800 4300
F 0 "#PWR?" H 5800 4050 50  0001 C CNN
F 1 "GND" H 5800 4150 50  0000 C CNN
F 2 "" H 5800 4300 60  0000 C CNN
F 3 "" H 5800 4300 60  0000 C CNN
	1    5800 4300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55B13F91
P 5200 4000
F 0 "#PWR?" H 5200 3750 50  0001 C CNN
F 1 "GND" H 5200 3850 50  0000 C CNN
F 2 "" H 5200 4000 60  0000 C CNN
F 3 "" H 5200 4000 60  0000 C CNN
	1    5200 4000
	-1   0    0    -1  
$EndComp
$Comp
L LTC2453 U?
U 1 1 55B13F97
P 5750 3800
F 0 "U?" H 5550 4100 50  0000 L CNN
F 1 "LTC2453" H 5950 4100 50  0000 L CNN
F 2 "" H 5750 3800 50  0000 C CIN
F 3 "" H 5750 3800 50  0000 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4200 5700 4250
Connection ~ 5800 4250
$Comp
L +5V #PWR?
U 1 1 55B13FA0
P 5850 3000
F 0 "#PWR?" H 5850 2850 50  0001 C CNN
F 1 "+5V" H 5850 3140 50  0000 C CNN
F 2 "" H 5850 3000 60  0000 C CNN
F 3 "" H 5850 3000 60  0000 C CNN
	1    5850 3000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55B13FA6
P 5300 3250
F 0 "C?" H 5325 3350 50  0000 L CNN
F 1 "C" H 5325 3150 50  0000 L CNN
F 2 "" H 5338 3100 30  0000 C CNN
F 3 "" H 5300 3250 60  0000 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55B13FAD
P 5300 3400
F 0 "#PWR?" H 5300 3150 50  0001 C CNN
F 1 "GND" H 5300 3250 50  0000 C CNN
F 2 "" H 5300 3400 60  0000 C CNN
F 3 "" H 5300 3400 60  0000 C CNN
	1    5300 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 3100 5750 3400
Wire Wire Line
	5200 3100 5750 3100
$Comp
L +5V #PWR?
U 1 1 55B13FB5
P 5300 2650
F 0 "#PWR?" H 5300 2500 50  0001 C CNN
F 1 "+5V" H 5300 2790 50  0000 C CNN
F 2 "" H 5300 2650 60  0000 C CNN
F 3 "" H 5300 2650 60  0000 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55B13FBB
P 5300 2850
F 0 "R?" V 5380 2850 50  0000 C CNN
F 1 "1k5" V 5300 2850 50  0000 C CNN
F 2 "" V 5230 2850 30  0000 C CNN
F 3 "" H 5300 2850 30  0000 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55B13FC2
P 5050 3100
F 0 "R?" V 5130 3100 50  0000 C CNN
F 1 "4k7" V 5050 3100 50  0000 C CNN
F 2 "" V 4980 3100 30  0000 C CNN
F 3 "" H 5050 3100 30  0000 C CNN
	1    5050 3100
	0    1    1    0   
$EndComp
Connection ~ 5300 3100
Wire Wire Line
	5300 3100 5300 3000
Wire Wire Line
	5300 2700 5300 2650
Wire Wire Line
	5850 3000 5850 3400
Wire Wire Line
	5200 4000 5200 3900
Wire Wire Line
	5200 3900 5250 3900
Wire Wire Line
	4900 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3700
Connection ~ 4800 3700
$Comp
L THERMISTOR TH?
U 1 1 55B14048
P 4000 4150
F 0 "TH?" V 4100 4200 50  0000 C CNN
F 1 "THERMISTOR" V 3900 4150 50  0000 C BNN
F 2 "" H 4000 4150 60  0000 C CNN
F 3 "" H 4000 4150 60  0000 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3700 4000 3900
$Comp
L GND #PWR?
U 1 1 55B14134
P 4000 4400
F 0 "#PWR?" H 4000 4150 50  0001 C CNN
F 1 "GND" H 4000 4250 50  0000 C CNN
F 2 "" H 4000 4400 60  0000 C CNN
F 3 "" H 4000 4400 60  0000 C CNN
	1    4000 4400
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
