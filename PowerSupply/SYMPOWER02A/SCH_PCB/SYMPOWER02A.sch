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
LIBS:cmos4000
LIBS:cmos_ieee
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
LIBS:mechanical
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
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:MLAB_BATERY
LIBS:MLAB_CONNECTORS
LIBS:MLAB_D
LIBS:MLAB_DISPLAY
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_SW
LIBS:MLAB_T
LIBS:MLAB_U
LIBS:MLAB_TR
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NAME"
Date "%F"
Rev "REV"
Comp "Mlab www.mlab.cz"
Comment1 "VERSION"
Comment2 "Short description \\nTwo lines are maximum"
Comment3 "nickname <email@example.com>"
Comment4 "BSD"
$EndDescr
$Comp
L HOLE M1
U 1 1 549D7549
P 10150 900
F 0 "M1" V 10050 900 60  0000 C CNN
F 1 "HOLE" H 10150 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10150 900 60  0001 C CNN
F 3 "" H 10150 900 60  0000 C CNN
	1    10150 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M2
U 1 1 549D7628
P 10350 900
F 0 "M2" V 10250 900 60  0000 C CNN
F 1 "HOLE" H 10350 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10350 900 60  0001 C CNN
F 3 "" H 10350 900 60  0000 C CNN
	1    10350 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M3
U 1 1 549D7646
P 10550 900
F 0 "M3" V 10450 900 60  0000 C CNN
F 1 "HOLE" H 10550 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10550 900 60  0001 C CNN
F 3 "" H 10550 900 60  0000 C CNN
	1    10550 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M4
U 1 1 549D7665
P 10750 900
F 0 "M4" V 10650 900 60  0000 C CNN
F 1 "HOLE" H 10750 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10750 900 60  0001 C CNN
F 3 "" H 10750 900 60  0000 C CNN
	1    10750 900 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 549D770F
P 10950 850
F 0 "#PWR01" H 10950 600 60  0001 C CNN
F 1 "GND" H 10950 700 60  0000 C CNN
F 2 "" H 10950 850 60  0000 C CNN
F 3 "" H 10950 850 60  0000 C CNN
	1    10950 850 
	1    0    0    -1  
$EndComp
Text Notes 10050 1150 0    60   ~ 0
MOUNTING HOLES
Wire Notes Line
	10050 1150 10050 750 
Wire Notes Line
	11050 1150 10050 1150
Wire Notes Line
	11050 750  11050 1150
Wire Notes Line
	10050 750  11050 750 
Connection ~ 10750 800 
Wire Wire Line
	10750 850  10750 800 
Connection ~ 10550 800 
Wire Wire Line
	10550 850  10550 800 
Connection ~ 10350 800 
Wire Wire Line
	10350 850  10350 800 
Wire Wire Line
	10150 800  10150 850 
Wire Wire Line
	10950 800  10150 800 
Wire Wire Line
	10950 850  10950 800 
$Comp
L VCC #PWR08
U 1 1 582457E2
P 4650 2800
F 0 "#PWR08" H 4650 2650 50  0001 C CNN
F 1 "VCC" H 4667 2973 50  0000 C CNN
F 2 "" H 4650 2800 50  0000 C CNN
F 3 "" H 4650 2800 50  0000 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L LM27762 U?
U 1 1 58AAF79A
P 5650 3900
F 0 "U?" H 5450 5200 60  0000 C CNN
F 1 "LM27762" H 5600 5050 60  0000 C CNN
F 2 "" H -1100 1800 60  0001 C CNN
F 3 "" H -1100 1800 60  0001 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AB3AC5
P 6250 3100
F 0 "R?" H 6320 3146 50  0000 L CNN
F 1 "R" H 6320 3055 50  0000 L CNN
F 2 "" V 2230 -1600 50  0001 C CNN
F 3 "" H 2300 -1600 50  0001 C CNN
	1    6250 3100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AB3B4A
P 6250 3500
F 0 "R?" H 6320 3546 50  0000 L CNN
F 1 "R" H 6320 3455 50  0000 L CNN
F 2 "" V 2230 -1200 50  0001 C CNN
F 3 "" H 2300 -1200 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AB3D64
P 6250 3900
F 0 "R?" H 6320 3946 50  0000 L CNN
F 1 "R" H 6320 3855 50  0000 L CNN
F 2 "" V 2230 -800 50  0001 C CNN
F 3 "" H 2300 -800 50  0001 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58AB3DCD
P 6250 4300
F 0 "R?" H 6320 4346 50  0000 L CNN
F 1 "R" H 6320 4255 50  0000 L CNN
F 2 "" V 2230 -400 50  0001 C CNN
F 3 "" H 2300 -400 50  0001 C CNN
	1    6250 4300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58AB43F7
P 6750 3300
F 0 "C?" H 6865 3346 50  0000 L CNN
F 1 "10uF" H 6865 3255 50  0000 L CNN
F 2 "" H 1788 -2450 50  0001 C CNN
F 3 "" H 1750 -2300 50  0001 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58AB4784
P 6750 4100
F 0 "C?" H 6865 4146 50  0000 L CNN
F 1 "10uF" H 6865 4055 50  0000 L CNN
F 2 "" H 1788 -1650 50  0001 C CNN
F 3 "" H 1750 -1500 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58AB4D2E
P 4950 3750
F 0 "C?" H 5065 3796 50  0000 L CNN
F 1 "1uF" H 5065 3705 50  0000 L CNN
F 2 "" H -12 -2000 50  0001 C CNN
F 3 "" H -50 -1850 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58AB595A
P 4650 3100
F 0 "C?" H 4765 3146 50  0000 L CNN
F 1 "10uF" H 4765 3055 50  0000 L CNN
F 2 "" H -312 -2650 50  0001 C CNN
F 3 "" H -350 -2500 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
