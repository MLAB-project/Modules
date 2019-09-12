EESchema Schematic File Version 2
LIBS:MLAB_BATERY
LIBS:MLAB_CONNECTORS
LIBS:MLAB_D
LIBS:MLAB_DISPLAY
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_SW
LIBS:MLAB_T
LIBS:MLAB_U
LIBS:74xgxx
LIBS:74xx
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
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
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip_dspic33dsc
LIBS:microchip
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:mlab_header
LIBS:mlab_mechanical
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:powerint
LIBS:power
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm32
LIBS:stm8
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:Zilog
LIBS:VLFANT01B-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HOLE M1
U 1 1 57D299A2
P 10280 720
F 0 "M1" H 10280 820 60  0000 C CNN
F 1 "HOLE" H 10280 620 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10280 720 60  0001 C CNN
F 3 "" H 10280 720 60  0000 C CNN
	1    10280 720 
	1    0    0    -1  
$EndComp
$Comp
L HOLE M3
U 1 1 57D2A075
P 10680 720
F 0 "M3" H 10680 820 60  0000 C CNN
F 1 "HOLE" H 10680 620 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10680 720 60  0001 C CNN
F 3 "" H 10680 720 60  0000 C CNN
	1    10680 720 
	1    0    0    -1  
$EndComp
$Comp
L HOLE M2
U 1 1 57D2A387
P 10280 1120
F 0 "M2" H 10280 1220 60  0000 C CNN
F 1 "HOLE" H 10280 1020 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10280 1120 60  0001 C CNN
F 3 "" H 10280 1120 60  0000 C CNN
	1    10280 1120
	1    0    0    -1  
$EndComp
$Comp
L HOLE M4
U 1 1 57D2A395
P 10680 1120
F 0 "M4" H 10680 1220 60  0000 C CNN
F 1 "HOLE" H 10680 1020 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10680 1120 60  0001 C CNN
F 3 "" H 10680 1120 60  0000 C CNN
	1    10680 1120
	1    0    0    -1  
$EndComp
$Comp
L SMA J7
U 1 1 57D68C46
P 7050 3700
F 0 "J7" H 7050 3900 60  0000 C CNN
F 1 "SMA" H 7200 3500 60  0000 C CNN
F 2 "Mlab_CON:SMA6251A13G50" H 7050 3700 60  0001 C CNN
F 3 "" H 7050 3700 60  0000 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
Text Label 6450 3700 0    60   ~ 0
OUT1
Text Label 6450 3900 0    60   ~ 0
OUT2
Wire Wire Line
	6700 3900 6450 3900
Wire Wire Line
	6700 3700 6450 3700
$Comp
L JUMP_3X2 J9
U 1 1 57D697CE
P 7250 4500
F 0 "J9" H 6900 4700 50  0000 C CNN
F 1 "JUMP_3X2" V 7250 4550 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 7250 4500 60  0001 C CNN
F 3 "" H 7250 4500 60  0000 C CNN
	1    7250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4350 6450 4350
Wire Wire Line
	6850 4450 6450 4450
Text Label 6450 4350 0    60   ~ 0
OUT1
Text Label 6450 4450 0    60   ~ 0
OUT2
$Comp
L GND #PWR05
U 1 1 57D69F7E
P 6750 4600
F 0 "#PWR05" H 6750 4350 50  0001 C CNN
F 1 "GND" H 6750 4450 50  0000 C CNN
F 2 "" H 6750 4600 50  0000 C CNN
F 3 "" H 6750 4600 50  0000 C CNN
	1    6750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4600 6750 4550
Wire Wire Line
	6750 4550 6850 4550
$Comp
L RJ45_RJHSE-5384 J2
U 1 1 58171334
P 3850 2050
F 0 "J2" H 3850 2674 60  0000 C CNN
F 1 "RJ45_RJHSE-5384" H 3850 2575 51  0000 C CNN
F 2 "Mlab_CON:RJHSE-5384(RJ45)" H 3850 2050 60  0001 C CNN
F 3 "" H 3850 2050 60  0000 C CNN
	1    3850 2050
	1    0    0    -1  
$EndComp
$Comp
L RJ45_RJHSE-5384 J3
U 1 1 58171450
P 6500 2550
F 0 "J3" H 6500 3174 60  0000 C CNN
F 1 "RJ45_RJHSE-5384" H 6500 3075 51  0000 C CNN
F 2 "Mlab_CON:RJHSE-5384(RJ45)" H 6500 2550 60  0001 C CNN
F 3 "" H 6500 2550 60  0000 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
Text Label 2150 2800 1    60   ~ 0
OUT1
Wire Wire Line
	2150 2500 2150 2800
Wire Wire Line
	3500 2500 3500 2600
Wire Wire Line
	3500 2600 2250 2600
Wire Wire Line
	2250 2600 2250 2500
Wire Wire Line
	3600 2500 3600 2650
Wire Wire Line
	3600 2650 2350 2650
Wire Wire Line
	2350 2650 2350 2500
Wire Wire Line
	3700 2500 3700 2700
Wire Wire Line
	3700 2700 2450 2700
Wire Wire Line
	2450 2700 2450 2500
Wire Wire Line
	3800 2500 3800 2750
Wire Wire Line
	3800 2750 2550 2750
Wire Wire Line
	2550 2750 2550 2500
Wire Wire Line
	3900 2500 3900 2800
Wire Wire Line
	3900 2800 2650 2800
Wire Wire Line
	2650 2800 2650 2500
Wire Wire Line
	4000 2500 4000 2850
Wire Wire Line
	4000 2850 2750 2850
Wire Wire Line
	2750 2850 2750 2500
Wire Wire Line
	4100 2500 4100 2900
Wire Wire Line
	4100 2900 2850 2900
Wire Wire Line
	2850 2900 2850 2500
Text Label 4200 2800 1    60   ~ 0
OUT2
Wire Wire Line
	4200 2500 4200 2800
$Comp
L GND #PWR013
U 1 1 581734D2
P 4400 1750
F 0 "#PWR013" H 4400 1500 50  0001 C CNN
F 1 "GND" H 4400 1600 50  0000 C CNN
F 2 "" H 4400 1750 50  0000 C CNN
F 3 "" H 4400 1750 50  0000 C CNN
	1    4400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1750 4400 1700
Text Label 6450 3300 1    60   ~ 0
OUT1
Text Label 6550 3300 1    60   ~ 0
OUT2
Wire Wire Line
	6450 3300 6450 3000
Wire Wire Line
	6550 3300 6550 3000
$Comp
L GND #PWR014
U 1 1 581755DF
P 7050 2250
F 0 "#PWR014" H 7050 2000 50  0001 C CNN
F 1 "GND" H 7050 2100 50  0000 C CNN
F 2 "" H 7050 2250 50  0000 C CNN
F 3 "" H 7050 2250 50  0000 C CNN
	1    7050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2250 7050 2200
$Comp
L RJ45_RJHSE-5384 J1
U 1 1 58170EC6
P 2500 2050
F 0 "J1" H 2500 2674 60  0000 C CNN
F 1 "RJ45_RJHSE-5384" H 2500 2575 51  0000 C CNN
F 2 "Mlab_CON:RJHSE-5384(RJ45)" H 2500 2050 60  0001 C CNN
F 3 "" H 2500 2050 60  0000 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
