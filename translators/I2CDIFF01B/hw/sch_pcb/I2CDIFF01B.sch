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
LIBS:powerint
LIBS:Power_Management
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
LIBS:ADC-DAC
LIBS:MLAB_BATERY
LIBS:MLAB_CONNECTORS
LIBS:MLAB_D
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_T
LIBS:MLAB_U
LIBS:I2CDIFF01B-cache
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
L PCA9616 U3
U 1 1 55C33645
P 6450 4300
F 0 "U3" H 6450 4750 60  0000 C CNN
F 1 "PCA9616" V 6500 4250 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 6650 4250 60  0001 C CNN
F 3 "" H 6650 4250 60  0000 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
Text GLabel 7200 4250 2    60   Input ~ 0
SCL
Text GLabel 7200 4350 2    60   Input ~ 0
SDA
$Comp
L GND #PWR01
U 1 1 55C3364B
P 6500 5200
F 0 "#PWR01" H 6500 4950 50  0001 C CNN
F 1 "GND" H 6500 5050 50  0000 C CNN
F 2 "" H 6500 5200 60  0000 C CNN
F 3 "" H 6500 5200 60  0000 C CNN
	1    6500 5200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55C3364C
P 1950 1850
F 0 "R2" V 2030 1850 50  0000 C CNN
F 1 "1k" V 1950 1850 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1880 1850 30  0001 C CNN
F 3 "" H 1950 1850 30  0000 C CNN
	1    1950 1850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 55C3364D
P 1650 1850
F 0 "R1" V 1730 1850 50  0000 C CNN
F 1 "1k" V 1650 1850 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1580 1850 30  0001 C CNN
F 3 "" H 1650 1850 30  0000 C CNN
	1    1650 1850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55C33655
P 6000 3250
F 0 "C5" H 6025 3350 50  0000 L CNN
F 1 "100nF" H 6025 3150 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 6038 3100 30  0001 C CNN
F 3 "" H 6000 3250 60  0000 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 55C33656
P 7000 3200
F 0 "C6" H 7025 3300 50  0000 L CNN
F 1 "100nF" H 7025 3100 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 7038 3050 30  0001 C CNN
F 3 "" H 7000 3200 60  0000 C CNN
	1    7000 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55C33657
P 7000 3350
F 0 "#PWR02" H 7000 3100 50  0001 C CNN
F 1 "GND" H 7000 3200 50  0000 C CNN
F 2 "" H 7000 3350 60  0000 C CNN
F 3 "" H 7000 3350 60  0000 C CNN
	1    7000 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55C33658
P 6000 3400
F 0 "#PWR03" H 6000 3150 50  0001 C CNN
F 1 "GND" H 6000 3250 50  0000 C CNN
F 2 "" H 6000 3400 60  0000 C CNN
F 3 "" H 6000 3400 60  0000 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
Text Label 5700 4000 0    60   ~ 0
INT+
Text Label 5700 4100 0    60   ~ 0
INT-
Text Label 5700 4350 0    60   ~ 0
SCL-
Text Label 5700 4250 0    60   ~ 0
SCL+
Text Label 5700 4550 0    60   ~ 0
SDA+
Text Label 5700 4650 0    60   ~ 0
SDA-
Text GLabel 9350 4100 0    60   Input ~ 0
SCL
Text GLabel 9350 3900 0    60   Input ~ 0
SDA
$Comp
L GND #PWR04
U 1 1 55C36383
P 10300 4250
F 0 "#PWR04" H 10300 4000 50  0001 C CNN
F 1 "GND" H 10300 4100 50  0000 C CNN
F 2 "" H 10300 4250 60  0000 C CNN
F 3 "" H 10300 4250 60  0000 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
Text Label 1300 2200 0    60   ~ 0
READY
Text Label 1300 2400 0    60   ~ 0
PIDENT
$Comp
L R R13
U 1 1 55C48899
P 9600 3500
F 0 "R13" V 9680 3500 50  0000 C CNN
F 1 "4k7" V 9600 3500 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 9530 3500 30  0001 C CNN
F 3 "" H 9600 3500 30  0000 C CNN
	1    9600 3500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 55C4889F
P 9950 3500
F 0 "R14" V 10030 3500 50  0000 C CNN
F 1 "4k7" V 9950 3500 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 9880 3500 30  0001 C CNN
F 3 "" H 9950 3500 30  0000 C CNN
	1    9950 3500
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5612887A
P 4550 4000
F 0 "R4" V 4630 4000 50  0000 C CNN
F 1 "120" V 4550 4000 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4480 4000 30  0001 C CNN
F 3 "" H 4550 4000 30  0000 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 561289EA
P 5000 4450
F 0 "R7" V 5080 4450 50  0000 C CNN
F 1 "120" V 5000 4450 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4930 4450 30  0001 C CNN
F 3 "" H 5000 4450 30  0000 C CNN
	1    5000 4450
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 56128A2E
P 5350 4600
F 0 "R10" V 5430 4600 50  0000 C CNN
F 1 "120" V 5350 4600 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 5280 4600 30  0001 C CNN
F 3 "" H 5350 4600 30  0000 C CNN
	1    5350 4600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56128A83
P 4550 3400
F 0 "R3" V 4630 3400 50  0000 C CNN
F 1 "620" V 4550 3400 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4480 3400 30  0001 C CNN
F 3 "" H 4550 3400 30  0000 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 56128B6E
P 5000 3400
F 0 "R6" V 5080 3400 50  0000 C CNN
F 1 "620" V 5000 3400 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4930 3400 30  0001 C CNN
F 3 "" H 5000 3400 30  0000 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 56128BAD
P 5350 3400
F 0 "R9" V 5430 3400 50  0000 C CNN
F 1 "620" V 5350 3400 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 5280 3400 30  0001 C CNN
F 3 "" H 5350 3400 30  0000 C CNN
	1    5350 3400
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56128D20
P 4550 5050
F 0 "R5" V 4630 5050 50  0000 C CNN
F 1 "620" V 4550 5050 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4480 5050 30  0001 C CNN
F 3 "" H 4550 5050 30  0000 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 56128D26
P 5000 5050
F 0 "R8" V 5080 5050 50  0000 C CNN
F 1 "620" V 5000 5050 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4930 5050 30  0001 C CNN
F 3 "" H 5000 5050 30  0000 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 56128D2C
P 5350 5050
F 0 "R11" V 5430 5050 50  0000 C CNN
F 1 "620" V 5350 5050 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 5280 5050 30  0001 C CNN
F 3 "" H 5350 5050 30  0000 C CNN
	1    5350 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5612A3A9
P 5000 5350
F 0 "#PWR05" H 5000 5100 50  0001 C CNN
F 1 "GND" H 5000 5200 50  0000 C CNN
F 2 "" H 5000 5350 60  0000 C CNN
F 3 "" H 5000 5350 60  0000 C CNN
	1    5000 5350
	1    0    0    -1  
$EndComp
Text Label 7110 4650 0    60   ~ 0
READY
Text Label 7110 4750 0    60   ~ 0
PIDENT
Wire Wire Line
	7200 4250 7100 4250
Wire Wire Line
	7200 4350 7100 4350
Wire Wire Line
	6000 3100 6000 3050
Wire Wire Line
	5000 3050 6300 3050
Wire Wire Line
	6300 2100 6300 3400
Connection ~ 6300 3050
Wire Wire Line
	6800 2100 6800 3400
Wire Wire Line
	7000 3000 7000 3050
Connection ~ 6800 3000
Wire Wire Line
	7100 4150 7450 4150
Wire Wire Line
	9350 4100 10400 4100
Wire Wire Line
	9350 3900 10400 3900
Wire Wire Line
	9600 3650 9600 3900
Wire Wire Line
	9950 3650 9950 4100
Wire Wire Line
	9600 3350 9600 3300
Wire Wire Line
	9950 3350 9950 3300
Connection ~ 9600 3900
Connection ~ 9950 4100
Wire Wire Line
	5350 4750 5350 4900
Wire Wire Line
	5650 4400 5350 4400
Wire Wire Line
	5350 3550 5350 4450
Connection ~ 5350 4400
Wire Wire Line
	5650 4800 5350 4800
Connection ~ 5350 4800
Wire Wire Line
	5200 4350 5200 4700
Wire Wire Line
	5000 3550 5000 4300
Wire Wire Line
	5000 4600 5000 4900
Wire Wire Line
	5200 4700 5000 4700
Connection ~ 5000 4700
Connection ~ 5000 4250
Wire Wire Line
	4750 4250 4750 4100
Wire Wire Line
	4550 4150 4550 4900
Connection ~ 4550 4250
Wire Wire Line
	4550 3850 4550 3550
Wire Wire Line
	4750 3800 4750 4000
Connection ~ 4550 3800
Wire Wire Line
	5000 3050 5000 3250
Wire Wire Line
	4550 3150 5350 3150
Wire Wire Line
	5350 3150 5350 3250
Connection ~ 5000 3150
Wire Wire Line
	4550 3250 4550 3150
Wire Wire Line
	4550 5200 4550 5300
Wire Wire Line
	4550 5300 5350 5300
Wire Wire Line
	5350 5300 5350 5200
Wire Wire Line
	5000 5200 5000 5350
Connection ~ 5000 5300
Wire Wire Line
	7450 4650 7100 4650
Wire Wire Line
	7100 4750 7450 4750
Wire Wire Line
	6800 3000 7000 3000
Wire Wire Line
	7450 3950 7100 3950
$Comp
L RJ45_RJHSE-5384 J2
U 1 1 568B891C
P 2500 2450
F 0 "J2" H 2500 3074 60  0000 C CNN
F 1 "RJ45_RJHSE-5384" H 2500 2975 51  0000 C CNN
F 2 "Mlab_CON:RJHSE-5384(RJ45)" H 2500 2450 60  0001 C CNN
F 3 "" H 2500 2450 60  0000 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J20
U 1 1 568B9545
P 10800 4050
F 0 "J20" H 10450 4250 50  0000 C CNN
F 1 "JUMP_2x1" V 10800 4200 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 10800 4050 60  0001 C CNN
F 3 "" H 10800 4050 60  0000 C CNN
	1    10800 4050
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J21
U 1 1 568B95C0
P 10800 4150
F 0 "J21" H 10450 4350 50  0000 C CNN
F 1 "JUMP_2x1" V 10800 4300 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 10800 4150 60  0001 C CNN
F 3 "" H 10800 4150 60  0000 C CNN
	1    10800 4150
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J19
U 1 1 568B97B4
P 10800 3950
F 0 "J19" H 10450 4150 50  0000 C CNN
F 1 "JUMP_2x1" V 10800 4100 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 10800 3950 60  0001 C CNN
F 3 "" H 10800 3950 60  0000 C CNN
	1    10800 3950
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J22
U 1 1 568B9802
P 10800 4250
F 0 "J22" H 10450 4450 50  0000 C CNN
F 1 "JUMP_2x1" V 10800 4400 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 10800 4250 60  0001 C CNN
F 3 "" H 10800 4250 60  0000 C CNN
	1    10800 4250
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J23
U 1 1 568B985E
P 10800 4350
F 0 "J23" H 10450 4550 50  0000 C CNN
F 1 "JUMP_2x1" V 10800 4500 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 10800 4350 60  0001 C CNN
F 3 "" H 10800 4350 60  0000 C CNN
	1    10800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3800 10300 3800
Wire Wire Line
	10300 3800 10300 4250
Wire Wire Line
	10400 4200 10300 4200
Connection ~ 10300 4200
Wire Wire Line
	10150 4000 10400 4000
Wire Wire Line
	10150 3300 10150 4000
$Comp
L GND #PWR06
U 1 1 568BC4B7
P 1550 5950
F 0 "#PWR06" H 1550 5700 50  0001 C CNN
F 1 "GND" H 1550 5800 50  0000 C CNN
F 2 "" H 1550 5950 60  0000 C CNN
F 3 "" H 1550 5950 60  0000 C CNN
	1    1550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5350 1550 5950
$Comp
L VCC #PWR07
U 1 1 568BCD14
P 1650 5250
F 0 "#PWR07" H 1650 5100 50  0001 C CNN
F 1 "VCC" H 1650 5400 50  0000 C CNN
F 2 "" H 1650 5250 60  0000 C CNN
F 3 "" H 1650 5250 60  0000 C CNN
	1    1650 5250
	1    0    0    -1  
$EndComp
Connection ~ 2350 5500
$Comp
L LM1117 U1
U 1 1 568BD657
P 2400 6850
F 0 "U1" H 2250 7050 60  0000 C CNN
F 1 "LM1117 5V" H 2660 6590 60  0000 C CNN
F 2 "Mlab_IO:SOT-223" H 2400 6850 60  0001 C CNN
F 3 "" H 2400 6850 60  0000 C CNN
	1    2400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6750 2000 6750
Wire Wire Line
	1950 6500 1950 6850
$Comp
L C C1
U 1 1 568BD989
P 1950 7000
F 0 "C1" H 1975 7100 50  0000 L CNN
F 1 "10uF/16V" H 1975 6900 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 1988 6850 30  0001 C CNN
F 3 "" H 1950 7000 60  0000 C CNN
	1    1950 7000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 568BDEAC
P 2950 7000
F 0 "C2" H 2975 7100 50  0000 L CNN
F 1 "10uF" H 2975 6900 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2988 6850 30  0001 C CNN
F 3 "" H 2950 7000 60  0000 C CNN
	1    2950 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 568BE13C
P 1950 7200
F 0 "#PWR08" H 1950 6950 50  0001 C CNN
F 1 "GND" H 1950 7050 50  0000 C CNN
F 2 "" H 1950 7200 60  0000 C CNN
F 3 "" H 1950 7200 60  0000 C CNN
	1    1950 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 568BE45F
P 2400 7200
F 0 "#PWR09" H 2400 6950 50  0001 C CNN
F 1 "GND" H 2400 7050 50  0000 C CNN
F 2 "" H 2400 7200 60  0000 C CNN
F 3 "" H 2400 7200 60  0000 C CNN
	1    2400 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 568BE4AE
P 2950 7200
F 0 "#PWR010" H 2950 6950 50  0001 C CNN
F 1 "GND" H 2950 7050 50  0000 C CNN
F 2 "" H 2950 7200 60  0000 C CNN
F 3 "" H 2950 7200 60  0000 C CNN
	1    2950 7200
	1    0    0    -1  
$EndComp
Connection ~ 1950 6750
Wire Wire Line
	1950 7200 1950 7150
Wire Wire Line
	2400 7200 2400 7150
Wire Wire Line
	2800 6750 3400 6750
Wire Wire Line
	2950 6050 2950 6850
Connection ~ 2950 6750
Connection ~ 2950 6550
Wire Wire Line
	2950 7150 2950 7200
$Comp
L LM1117 U2
U 1 1 568BF5D6
P 3800 6850
F 0 "U2" H 3650 7050 60  0000 C CNN
F 1 "LM1117 3V3" V 4070 6640 60  0000 C CNN
F 2 "Mlab_IO:SOT-223" H 3800 6850 60  0001 C CNN
F 3 "" H 3800 6850 60  0000 C CNN
	1    3800 6850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 568BF9C5
P 3350 7000
F 0 "C3" H 3375 7100 50  0000 L CNN
F 1 "10uF" H 3375 6900 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3388 6850 30  0001 C CNN
F 3 "" H 3350 7000 60  0000 C CNN
	1    3350 7000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 568BFA37
P 4300 7000
F 0 "C4" H 4325 7100 50  0000 L CNN
F 1 "10uF" H 4325 6900 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4338 6850 30  0001 C CNN
F 3 "" H 4300 7000 60  0000 C CNN
	1    4300 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 568BFB23
P 3350 7200
F 0 "#PWR011" H 3350 6950 50  0001 C CNN
F 1 "GND" H 3350 7050 50  0000 C CNN
F 2 "" H 3350 7200 60  0000 C CNN
F 3 "" H 3350 7200 60  0000 C CNN
	1    3350 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 568BFB7A
P 4300 7200
F 0 "#PWR012" H 4300 6950 50  0001 C CNN
F 1 "GND" H 4300 7050 50  0000 C CNN
F 2 "" H 4300 7200 60  0000 C CNN
F 3 "" H 4300 7200 60  0000 C CNN
	1    4300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6850 3350 6750
Connection ~ 3350 6750
Wire Wire Line
	4200 6750 4300 6750
Wire Wire Line
	4300 6050 4300 6850
Wire Wire Line
	4300 7200 4300 7150
Wire Wire Line
	3350 7200 3350 7150
$Comp
L GND #PWR013
U 1 1 568C00D3
P 3800 7200
F 0 "#PWR013" H 3800 6950 50  0001 C CNN
F 1 "GND" H 3800 7050 50  0000 C CNN
F 2 "" H 3800 7200 60  0000 C CNN
F 3 "" H 3800 7200 60  0000 C CNN
	1    3800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7200 3800 7150
Connection ~ 4300 6750
$Comp
L JUMP2_2x1 J11
U 1 1 568C0724
P 3800 6550
F 0 "J11" H 3500 6600 50  0000 C CNN
F 1 "JUMP2_2x1" H 4000 6450 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3800 6550 60  0001 C CNN
F 3 "" H 3800 6550 60  0000 C CNN
	1    3800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6550 4300 6550
Connection ~ 4300 6550
$Comp
L D_ZENER D1
U 1 1 568C1495
P 1550 6950
F 0 "D1" H 1550 7050 50  0000 C CNN
F 1 "SMBJ15A-E3/52" H 1550 6850 50  0000 C CNN
F 2 "Mlab_D:Diode-SMB_Standard" H 1550 6950 60  0001 C CNN
F 3 "" H 1550 6950 60  0000 C CNN
	1    1550 6950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 568C1528
P 1550 7200
F 0 "#PWR014" H 1550 6950 50  0001 C CNN
F 1 "GND" H 1550 7050 50  0000 C CNN
F 2 "" H 1550 7200 60  0000 C CNN
F 3 "" H 1550 7200 60  0000 C CNN
	1    1550 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 7200 1550 7150
$Comp
L JUMP_3X2 J10
U 1 1 568C2E13
P 3500 6250
F 0 "J10" H 3150 6450 50  0000 C CNN
F 1 "JUMP_3X2" V 3500 6300 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 3500 6250 60  0001 C CNN
F 3 "" H 3500 6250 60  0000 C CNN
	1    3500 6250
	1    0    0    -1  
$EndComp
$Comp
L JUMP_3X2 J13
U 1 1 568C3105
P 4900 6250
F 0 "J13" H 4550 6450 50  0000 C CNN
F 1 "JUMP_3X2" V 4900 6300 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 4900 6250 60  0001 C CNN
F 3 "" H 4900 6250 60  0000 C CNN
	1    4900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6200 4300 6200
Connection ~ 4300 6200
Wire Wire Line
	3100 6200 2950 6200
Connection ~ 2950 6200
$Comp
L GND #PWR015
U 1 1 568C3B5D
P 3050 6350
F 0 "#PWR015" H 3050 6100 50  0001 C CNN
F 1 "GND" H 3050 6200 50  0000 C CNN
F 2 "" H 3050 6350 60  0000 C CNN
F 3 "" H 3050 6350 60  0000 C CNN
	1    3050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6350 3050 6100
Wire Wire Line
	3050 6100 3100 6100
Wire Wire Line
	3100 6300 3050 6300
Connection ~ 3050 6300
$Comp
L GND #PWR016
U 1 1 568C40C3
P 4450 6350
F 0 "#PWR016" H 4450 6100 50  0001 C CNN
F 1 "GND" H 4450 6200 50  0000 C CNN
F 2 "" H 4450 6350 60  0000 C CNN
F 3 "" H 4450 6350 60  0000 C CNN
	1    4450 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6350 4450 6100
Wire Wire Line
	4450 6100 4500 6100
Wire Wire Line
	4500 6300 4450 6300
Connection ~ 4450 6300
$Comp
L GND #PWR017
U 1 1 568C5BEC
P 6500 3200
F 0 "#PWR017" H 6500 2950 50  0001 C CNN
F 1 "GND" H 6500 3050 50  0000 C CNN
F 2 "" H 6500 3200 60  0000 C CNN
F 3 "" H 6500 3200 60  0000 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L JUMP2_2x1 J14
U 1 1 568C5C78
P 6500 2850
F 0 "J14" H 6200 2900 50  0000 C CNN
F 1 "JUMP2_2x1" H 6700 2750 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6500 2850 60  0001 C CNN
F 3 "" H 6500 2850 60  0000 C CNN
	1    6500 2850
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 568C5D2D
P 6500 2250
F 0 "R12" V 6580 2250 50  0000 C CNN
F 1 "1k" V 6500 2250 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 6430 2250 30  0001 C CNN
F 3 "" H 6500 2250 30  0000 C CNN
	1    6500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 3200 6500 3150
Wire Wire Line
	6500 2400 6500 2500
Wire Wire Line
	6500 2450 6650 2450
Wire Wire Line
	6650 2450 6650 3400
Connection ~ 6500 2450
$Comp
L CONN_3 J15
U 1 1 568C6EE7
P 7500 2100
F 0 "J15" H 7500 2100 50  0000 C CNN
F 1 "CONN_3" H 7550 2000 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x03" H 7500 2100 60  0001 C CNN
F 3 "" H 7500 2100 60  0000 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2100 7150 2100
Connection ~ 6800 2100
Wire Wire Line
	7150 2000 7150 1950
Wire Wire Line
	7150 2200 6950 2200
Wire Wire Line
	6950 2200 6950 1950
$Comp
L CONN_3 J12
U 1 1 568C8AEC
P 5650 2100
F 0 "J12" H 5650 2100 50  0000 C CNN
F 1 "CONN_3" H 5700 2000 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x03" H 5650 2100 60  0001 C CNN
F 3 "" H 5650 2100 60  0000 C CNN
	1    5650 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 2100 6300 2100
Wire Wire Line
	6000 2000 6050 2000
Wire Wire Line
	6050 2000 6050 1950
Wire Wire Line
	6250 1950 6250 2200
Wire Wire Line
	6250 2200 6000 2200
Wire Wire Line
	4750 4000 5900 4000
Wire Wire Line
	4750 4100 5900 4100
Wire Wire Line
	5000 4250 5900 4250
Wire Wire Line
	5900 4350 5200 4350
Wire Wire Line
	5650 4400 5650 4550
Wire Wire Line
	5650 4550 5900 4550
Wire Wire Line
	5900 4650 5650 4650
Wire Wire Line
	5650 4650 5650 4800
Connection ~ 6000 3050
Text Label 6300 3300 1    60   ~ 0
VddB
Text Label 1950 1650 1    60   ~ 0
VddB
Wire Wire Line
	1950 2000 1950 2100
Wire Wire Line
	1950 2300 1650 2300
Wire Wire Line
	1650 2300 1650 2000
Text Label 1650 1650 1    60   ~ 0
VddB
Wire Wire Line
	1650 1700 1650 1650
Wire Wire Line
	1950 1700 1950 1650
Wire Wire Line
	1950 2200 1300 2200
Wire Wire Line
	1950 2400 1300 2400
$Comp
L GND #PWR018
U 1 1 568D0F20
P 3230 2500
F 0 "#PWR018" H 3230 2250 50  0001 C CNN
F 1 "GND" H 3230 2350 50  0000 C CNN
F 2 "" H 3230 2500 60  0000 C CNN
F 3 "" H 3230 2500 60  0000 C CNN
	1    3230 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2100 3450 2100
Text Label 2950 6050 1    60   ~ 0
VDD1
Text Label 4300 6050 1    60   ~ 0
VDD2
Text Label 6050 1950 1    60   ~ 0
VDD1
Text Label 6950 1950 1    60   ~ 0
VDD1
Text Label 6250 1950 1    60   ~ 0
VDD2
Text Label 7150 1950 1    60   ~ 0
VDD2
Text Label 6800 3300 1    60   ~ 0
VddA
$Comp
L GND #PWR019
U 1 1 568D5004
P 1900 3200
F 0 "#PWR019" H 1900 2950 50  0001 C CNN
F 1 "GND" H 1900 3050 50  0000 C CNN
F 2 "" H 1900 3200 60  0000 C CNN
F 3 "" H 1900 3200 60  0000 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 568D525B
P 1900 2900
F 0 "#PWR020" H 1900 2750 50  0001 C CNN
F 1 "VCC" H 1900 3050 50  0000 C CNN
F 2 "" H 1900 2900 60  0000 C CNN
F 3 "" H 1900 2900 60  0000 C CNN
	1    1900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2900 2250 3500
Wire Wire Line
	2450 2900 2450 2950
Wire Wire Line
	2450 2950 1900 2950
Wire Wire Line
	1900 2950 1900 2900
Wire Wire Line
	2550 2900 2550 3050
Wire Wire Line
	4550 3800 4750 3800
Wire Wire Line
	4550 4250 4750 4250
Wire Wire Line
	2750 2900 2750 3100
Wire Wire Line
	2650 2900 2650 3250
Wire Wire Line
	2350 2900 2350 3350
Wire Wire Line
	2850 3000 3200 3000
Wire Wire Line
	2150 2900 2150 3600
Text Label 2950 3000 0    60   ~ 0
INT+
Text Label 2950 3100 0    60   ~ 0
INT-
Wire Wire Line
	2350 3350 3200 3350
Text Label 2950 3350 0    60   ~ 0
SCL-
Text Label 2950 3250 0    60   ~ 0
SCL+
Text Label 2950 3500 0    60   ~ 0
SDA+
Text Label 2950 3600 0    60   ~ 0
SDA-
$Comp
L JUMP_2x1 J4
U 1 1 568D8FDE
P 3600 3150
F 0 "J4" H 3250 3350 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3300 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3150 60  0001 C CNN
F 3 "" H 3600 3150 60  0000 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J5
U 1 1 568D9408
P 3600 3250
F 0 "J5" H 3250 3450 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3400 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3250 60  0001 C CNN
F 3 "" H 3600 3250 60  0000 C CNN
	1    3600 3250
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J6
U 1 1 568DB005
P 3600 3400
F 0 "J6" H 3250 3600 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3550 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3400 60  0001 C CNN
F 3 "" H 3600 3400 60  0000 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J7
U 1 1 568DB07B
P 3600 3500
F 0 "J7" H 3250 3700 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3650 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3500 60  0001 C CNN
F 3 "" H 3600 3500 60  0000 C CNN
	1    3600 3500
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J8
U 1 1 568DB1C8
P 3600 3650
F 0 "J8" H 3250 3850 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3800 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3650 60  0001 C CNN
F 3 "" H 3600 3650 60  0000 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J9
U 1 1 568DB2A0
P 3600 3750
F 0 "J9" H 3250 3950 50  0000 C CNN
F 1 "JUMP_2x1" V 3600 3900 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 3600 3750 60  0001 C CNN
F 3 "" H 3600 3750 60  0000 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
$Comp
L HOLE M1
U 1 1 568DCC14
P 9950 5350
F 0 "M1" H 9950 5450 60  0000 C CNN
F 1 "HOLE" H 9950 5250 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 9950 5350 60  0001 C CNN
F 3 "" H 9950 5350 60  0000 C CNN
	1    9950 5350
	1    0    0    -1  
$EndComp
$Comp
L HOLE M2
U 1 1 568DCFB0
P 9950 5750
F 0 "M2" H 9950 5850 60  0000 C CNN
F 1 "HOLE" H 9950 5650 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 9950 5750 60  0001 C CNN
F 3 "" H 9950 5750 60  0000 C CNN
	1    9950 5750
	1    0    0    -1  
$EndComp
$Comp
L HOLE M3
U 1 1 568DD0C8
P 10400 5350
F 0 "M3" H 10400 5450 60  0000 C CNN
F 1 "HOLE" H 10400 5250 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10400 5350 60  0001 C CNN
F 3 "" H 10400 5350 60  0000 C CNN
	1    10400 5350
	1    0    0    -1  
$EndComp
$Comp
L HOLE M4
U 1 1 568DD160
P 10400 5750
F 0 "M4" H 10400 5850 60  0000 C CNN
F 1 "HOLE" H 10400 5650 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10400 5750 60  0001 C CNN
F 3 "" H 10400 5750 60  0000 C CNN
	1    10400 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 568DD284
P 10100 5900
F 0 "#PWR021" H 10100 5650 50  0001 C CNN
F 1 "GND" H 10100 5750 50  0000 C CNN
F 2 "" H 10100 5900 60  0000 C CNN
F 3 "" H 10100 5900 60  0000 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 568DD5CF
P 10550 5900
F 0 "#PWR022" H 10550 5650 50  0001 C CNN
F 1 "GND" H 10550 5750 50  0000 C CNN
F 2 "" H 10550 5900 60  0000 C CNN
F 3 "" H 10550 5900 60  0000 C CNN
	1    10550 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 568DD74E
P 10100 5450
F 0 "#PWR023" H 10100 5200 50  0001 C CNN
F 1 "GND" H 10100 5300 50  0000 C CNN
F 2 "" H 10100 5450 60  0000 C CNN
F 3 "" H 10100 5450 60  0000 C CNN
	1    10100 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 568DD805
P 10550 5450
F 0 "#PWR024" H 10550 5200 50  0001 C CNN
F 1 "GND" H 10550 5300 50  0000 C CNN
F 2 "" H 10550 5450 60  0000 C CNN
F 3 "" H 10550 5450 60  0000 C CNN
	1    10550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5350 10100 5350
Wire Wire Line
	10100 5350 10100 5450
Wire Wire Line
	10450 5350 10550 5350
Wire Wire Line
	10550 5350 10550 5450
Wire Wire Line
	10000 5750 10100 5750
Wire Wire Line
	10100 5750 10100 5900
Wire Wire Line
	10450 5750 10550 5750
Wire Wire Line
	10550 5750 10550 5900
$Comp
L CP C7
U 1 1 568E10B3
P 2350 5700
F 0 "C7" H 2375 5800 50  0000 L CNN
F 1 "47uF" H 2375 5600 50  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 2388 5550 30  0001 C CNN
F 3 "" H 2350 5700 60  0000 C CNN
	1    2350 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 568E11D4
P 2350 5950
F 0 "#PWR025" H 2350 5700 50  0001 C CNN
F 1 "GND" H 2350 5800 50  0000 C CNN
F 2 "" H 2350 5950 60  0000 C CNN
F 3 "" H 2350 5950 60  0000 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5950 2350 5850
Wire Wire Line
	2350 5300 2350 5550
Text Label 9600 3300 1    60   ~ 0
VddA
Text Label 9950 3300 1    60   ~ 0
VddA
Text Label 7300 3950 0    60   ~ 0
EN
Text Label 10150 3300 1    60   ~ 0
VddA
$Comp
L D_4xZENER D2
U 1 1 568CF656
P 1750 4350
F 0 "D2" H 1350 4500 50  0000 C CNN
F 1 "SP1001-04XTG" H 1500 4150 50  0000 C CNN
F 2 "Mlab_IO:SOT-553" H 1750 4850 60  0001 C CNN
F 3 "" H 1750 4850 60  0000 C CNN
	1    1750 4350
	1    0    0    -1  
$EndComp
$Comp
L D_4xZENER D3
U 1 1 568CFCCB
P 2550 4350
F 0 "D3" H 2150 4500 50  0000 C CNN
F 1 "SP1001-04XTG" H 2300 4150 50  0000 C CNN
F 2 "Mlab_IO:SOT-553" H 2550 4850 60  0001 C CNN
F 3 "" H 2550 4850 60  0000 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 568D07D8
P 1800 4700
F 0 "#PWR026" H 1800 4450 50  0001 C CNN
F 1 "GND" H 1800 4550 50  0000 C CNN
F 2 "" H 1800 4700 60  0000 C CNN
F 3 "" H 1800 4700 60  0000 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 568D09EB
P 2600 4700
F 0 "#PWR027" H 2600 4450 50  0001 C CNN
F 1 "GND" H 2600 4550 50  0000 C CNN
F 2 "" H 2600 4700 60  0000 C CNN
F 3 "" H 2600 4700 60  0000 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4700 2600 4650
Wire Wire Line
	1800 4700 1800 4650
Text Label 2350 4150 1    60   ~ 0
INT+
Text Label 2500 4150 1    60   ~ 0
INT-
Text Label 2800 4150 1    60   ~ 0
SCL-
Text Label 2650 4150 1    60   ~ 0
SCL+
Text Label 2000 4150 1    60   ~ 0
SDA+
Text Label 1850 4150 1    60   ~ 0
SDA-
Wire Wire Line
	2250 3500 3200 3500
Wire Wire Line
	2150 3600 3200 3600
Wire Wire Line
	2650 3250 3200 3250
Wire Wire Line
	2750 3100 3200 3100
Wire Wire Line
	2850 3000 2850 2900
Wire Wire Line
	2550 3050 1900 3050
Wire Wire Line
	1900 3050 1900 3200
Text Notes 6450 2900 1    60   ~ 0
SEL
$Comp
L JUMP_4X2 J1
U 1 1 56911A4A
P 1050 5500
F 0 "J1" H 700 5750 50  0000 C CNN
F 1 "JUMP_4X2" V 1000 5500 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x04" H 1050 5500 60  0001 C CNN
F 3 "" H 1050 5500 60  0000 C CNN
	1    1050 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 5350 1550 5350
Wire Wire Line
	1450 5650 1550 5650
Connection ~ 1550 5650
$Comp
L JUMP2_2x1 J17
U 1 1 56934AC7
P 2050 5500
F 0 "J17" H 1750 5550 50  0000 C CNN
F 1 "JUMP2_2x1" H 2250 5400 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 2050 5500 60  0001 C CNN
F 3 "" H 2050 5500 60  0000 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5450 1450 5550
Wire Wire Line
	1450 5500 1700 5500
Connection ~ 1450 5500
Wire Wire Line
	1650 5250 1650 5500
Connection ~ 1650 5500
$Comp
L VDD #PWR028
U 1 1 56937D75
P 1950 6500
F 0 "#PWR028" H 1950 6350 50  0001 C CNN
F 1 "VDD" H 1950 6650 50  0000 C CNN
F 2 "" H 1950 6500 60  0000 C CNN
F 3 "" H 1950 6500 60  0000 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR029
U 1 1 56938717
P 2350 5300
F 0 "#PWR029" H 2350 5150 50  0001 C CNN
F 1 "VDD" H 2350 5450 50  0000 C CNN
F 2 "" H 2350 5300 60  0000 C CNN
F 3 "" H 2350 5300 60  0000 C CNN
	1    2350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6550 3450 6550
$Comp
L JUMP_2x1 J3
U 1 1 56B1F3E3
P 7850 4800
F 0 "J3" H 7500 5000 50  0000 C CNN
F 1 "JUMP_2x1" V 7850 4950 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 7850 4800 60  0001 C CNN
F 3 "" H 7850 4800 60  0000 C CNN
	1    7850 4800
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 56B24B76
P 3230 2290
F 0 "R15" V 3310 2290 50  0000 C CNN
F 1 "1k" V 3230 2290 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3160 2290 30  0001 C CNN
F 3 "" H 3230 2290 30  0000 C CNN
	1    3230 2290
	-1   0    0    1   
$EndComp
$Comp
L C C8
U 1 1 56B25436
P 3450 2290
F 0 "C8" H 3475 2390 50  0000 L CNN
F 1 "100nF" H 3475 2190 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3488 2140 30  0001 C CNN
F 3 "" H 3450 2290 60  0000 C CNN
	1    3450 2290
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2100 3450 2140
Wire Wire Line
	3230 2140 3230 2100
Connection ~ 3230 2100
$Comp
L GND #PWR030
U 1 1 56B269EF
P 3450 2510
F 0 "#PWR030" H 3450 2260 50  0001 C CNN
F 1 "GND" H 3450 2360 50  0000 C CNN
F 2 "" H 3450 2510 60  0000 C CNN
F 3 "" H 3450 2510 60  0000 C CNN
	1    3450 2510
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2440 3450 2510
Wire Wire Line
	3230 2440 3230 2500
Text Label 7300 4150 0    60   ~ 0
INT
$Comp
L CONN1_1 J16
U 1 1 574DE7EC
P 7750 4000
F 0 "J16" H 7800 4050 50  0000 C CNN
F 1 "CONN1_1" H 7850 3950 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 7800 3950 60  0001 C CNN
F 3 "" H 7800 3950 60  0000 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J18
U 1 1 574DEA00
P 7750 4200
F 0 "J18" H 7800 4250 50  0000 C CNN
F 1 "CONN1_1" H 7850 4150 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 7800 4150 60  0001 C CNN
F 3 "" H 7800 4150 60  0000 C CNN
	1    7750 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
