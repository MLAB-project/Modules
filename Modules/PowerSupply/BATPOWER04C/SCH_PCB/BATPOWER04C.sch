EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Jumpers
LIBS:MLAB_D
LIBS:MLAB_IO
LIBS:MLAB_T
EELAYER 24 0
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
L LM3485 U1
U 1 1 5476F060
P 5300 2500
F 0 "U1" H 5000 2800 60  0000 C CNN
F 1 "LM3485" H 5500 2800 60  0000 C CNN
F 2 "" H 5500 2450 60  0000 C CNN
F 3 "" H 5500 2450 60  0000 C CNN
	1    5300 2500
	1    0    0    -1  
$EndComp
$Comp
L JUMP_4X2 J1
U 1 1 5476F306
P 2800 1450
F 0 "J1" H 2450 1700 50  0000 C CNN
F 1 "JUMP_4X2" V 2750 1450 40  0000 C CNN
F 2 "" H 2800 1450 60  0000 C CNN
F 3 "" H 2800 1450 60  0000 C CNN
	1    2800 1450
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J2
U 1 1 5476F3AB
P 2850 1950
F 0 "J2" H 2900 2000 50  0000 C CNN
F 1 "CONN1_1" H 2950 1900 40  0000 C CNN
F 2 "" H 2900 1900 60  0000 C CNN
F 3 "" H 2900 1900 60  0000 C CNN
	1    2850 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J3
U 1 1 5476F449
P 2850 2150
F 0 "J3" H 2900 2200 50  0000 C CNN
F 1 "CONN1_1" H 2950 2100 40  0000 C CNN
F 2 "" H 2900 2100 60  0000 C CNN
F 3 "" H 2900 2100 60  0000 C CNN
	1    2850 2150
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 5476F499
P 3650 1850
F 0 "D1" H 3650 1950 40  0000 C CNN
F 1 "M4" H 3650 1750 40  0000 C CNN
F 2 "" H 3650 1850 60  0000 C CNN
F 3 "" H 3650 1850 60  0000 C CNN
	1    3650 1850
	0    -1   -1   0   
$EndComp
$Comp
L CP2 C1
U 1 1 5476F528
P 3950 1850
F 0 "C1" H 3950 1950 40  0000 L CNN
F 1 "47uF" H 3956 1765 40  0000 L CNN
F 2 "" H 3988 1700 30  0000 C CNN
F 3 "" H 3950 1850 60  0000 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5476F659
P 5200 1750
F 0 "R1" V 5280 1750 40  0000 C CNN
F 1 "22k" V 5207 1751 40  0000 C CNN
F 2 "" V 5130 1750 30  0000 C CNN
F 3 "" H 5200 1750 30  0000 C CNN
	1    5200 1750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5476F755
P 4950 1750
F 0 "C3" H 4950 1850 40  0000 L CNN
F 1 "1nF" H 4956 1665 40  0000 L CNN
F 2 "" H 4988 1600 30  0000 C CNN
F 3 "" H 4950 1750 60  0000 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L IRF7416 Q1
U 1 1 54770268
P 5800 2500
F 0 "Q1" H 5750 2800 40  0000 C CNN
F 1 "IRF7416" V 5850 2400 40  0000 C CNN
F 2 "MICRO8" H 5800 2800 30  0001 C CIN
F 3 "" V 5800 2600 60  0000 C CNN
	1    5800 2500
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5477033B
P 6800 3600
F 0 "C4" H 6800 3700 40  0000 L CNN
F 1 "100pF" H 6806 3515 40  0000 L CNN
F 2 "" H 6838 3450 30  0000 C CNN
F 3 "" H 6800 3600 60  0000 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D2
U 1 1 5477039D
P 5950 2950
F 0 "D2" H 5950 3050 40  0000 C CNN
F 1 "15MQ040N" H 5950 2850 40  0000 C CNN
F 2 "" H 5950 2950 60  0000 C CNN
F 3 "" H 5950 2950 60  0000 C CNN
	1    5950 2950
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 547704A3
P 6400 2700
F 0 "L1" H 6400 2800 50  0000 C CNN
F 1 "22uH" H 6400 2650 50  0000 C CNN
F 2 "" H 6400 2700 60  0000 C CNN
F 3 "" H 6400 2700 60  0000 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5477050C
P 6450 3650
F 0 "R3" V 6530 3650 40  0000 C CNN
F 1 "33k" V 6457 3651 40  0000 C CNN
F 2 "" V 6380 3650 30  0000 C CNN
F 3 "" H 6450 3650 30  0000 C CNN
	1    6450 3650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54770570
P 6250 5150
F 0 "R2" V 6330 5150 40  0000 C CNN
F 1 "20k" V 6257 5151 40  0000 C CNN
F 2 "" V 6180 5150 30  0000 C CNN
F 3 "" H 6250 5150 30  0000 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 547705D0
P 6450 5150
F 0 "R4" V 6530 5150 40  0000 C CNN
F 1 "R" V 6457 5151 40  0000 C CNN
F 2 "" V 6380 5150 30  0000 C CNN
F 3 "" H 6450 5150 30  0000 C CNN
	1    6450 5150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5477060F
P 4250 1850
F 0 "C2" H 4250 1950 40  0000 L CNN
F 1 "100nF" H 4256 1765 40  0000 L CNN
F 2 "" H 4288 1700 30  0000 C CNN
F 3 "" H 4250 1850 60  0000 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5477069D
P 6800 4300
F 0 "C5" H 6800 4400 40  0000 L CNN
F 1 "470pF" H 6806 4215 40  0000 L CNN
F 2 "" H 6838 4150 30  0000 C CNN
F 3 "" H 6800 4300 60  0000 C CNN
	1    6800 4300
	1    0    0    -1  
$EndComp
$Comp
L CP2 C6
U 1 1 547707A4
P 7100 2900
F 0 "C6" H 7100 3000 40  0000 L CNN
F 1 "100uF" H 7106 2815 40  0000 L CNN
F 2 "" H 7138 2750 30  0000 C CNN
F 3 "" H 7100 2900 60  0000 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L CP2 C7
U 1 1 54770930
P 7450 2900
F 0 "C7" H 7450 3000 40  0000 L CNN
F 1 "100uF" H 7456 2815 40  0000 L CNN
F 2 "" H 7488 2750 30  0000 C CNN
F 3 "" H 7450 2900 60  0000 C CNN
	1    7450 2900
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 54770A4C
P 6050 5150
F 0 "RV1" H 6050 5050 50  0000 C CNN
F 1 "POT" H 6050 5150 50  0000 C CNN
F 2 "" H 6050 5150 60  0000 C CNN
F 3 "" H 6050 5150 60  0000 C CNN
	1    6050 5150
	0    -1   -1   0   
$EndComp
$Comp
L JUMP_4X2 J9
U 1 1 54770CCE
P 8350 2700
F 0 "J9" H 8000 2950 50  0000 C CNN
F 1 "JUMP_4X2" V 8300 2700 40  0000 C CNN
F 2 "" H 8350 2700 60  0000 C CNN
F 3 "" H 8350 2700 60  0000 C CNN
	1    8350 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J8
U 1 1 54770EF4
P 8300 2300
F 0 "J8" H 8350 2350 50  0000 C CNN
F 1 "CONN1_1" H 8400 2250 40  0000 C CNN
F 2 "" H 8350 2250 60  0000 C CNN
F 3 "" H 8350 2250 60  0000 C CNN
	1    8300 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J7
U 1 1 547710E9
P 8300 2150
F 0 "J7" H 8350 2200 50  0000 C CNN
F 1 "CONN1_1" H 8400 2100 40  0000 C CNN
F 2 "" H 8350 2100 60  0000 C CNN
F 3 "" H 8350 2100 60  0000 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2100 5200 2000
Wire Wire Line
	5200 2050 4950 2050
Wire Wire Line
	4950 2050 4950 1950
Connection ~ 5200 2050
Wire Wire Line
	3250 1400 3250 1500
Wire Wire Line
	3250 1500 3200 1500
Wire Wire Line
	3200 1400 3250 1400
Wire Wire Line
	3250 1450 5950 1450
Connection ~ 3250 1450
Wire Wire Line
	3200 1300 3300 1300
Wire Wire Line
	3300 1300 3300 1700
Wire Wire Line
	3300 1600 3200 1600
$Comp
L GND #PWR2
U 1 1 547722EF
P 3300 1700
F 0 "#PWR2" H 3300 1700 30  0001 C CNN
F 1 "GND" H 3300 1630 30  0001 C CNN
F 2 "" H 3300 1700 60  0000 C CNN
F 3 "" H 3300 1700 60  0000 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
Connection ~ 3300 1600
Text Label 3450 1450 0    60   ~ 0
Vin
$Comp
L GND #PWR4
U 1 1 547725B5
P 3950 2100
F 0 "#PWR4" H 3950 2100 30  0001 C CNN
F 1 "GND" H 3950 2030 30  0001 C CNN
F 2 "" H 3950 2100 60  0000 C CNN
F 3 "" H 3950 2100 60  0000 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2000 3400 2000
Wire Wire Line
	3400 2000 3400 1450
Connection ~ 3400 1450
Wire Wire Line
	3150 2200 3200 2200
Wire Wire Line
	3200 2200 3200 2250
$Comp
L GND #PWR3
U 1 1 54772821
P 3650 2100
F 0 "#PWR3" H 3650 2100 30  0001 C CNN
F 1 "GND" H 3650 2030 30  0001 C CNN
F 2 "" H 3650 2100 60  0000 C CNN
F 3 "" H 3650 2100 60  0000 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 54772844
P 3200 2250
F 0 "#PWR1" H 3200 2250 30  0001 C CNN
F 1 "GND" H 3200 2180 30  0001 C CNN
F 2 "" H 3200 2250 60  0000 C CNN
F 3 "" H 3200 2250 60  0000 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1650 3650 1450
Connection ~ 3650 1450
Wire Wire Line
	3950 1650 3950 1450
Connection ~ 3950 1450
Wire Wire Line
	3650 2050 3650 2100
Wire Wire Line
	3950 2050 3950 2100
Wire Wire Line
	4950 1550 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	5200 1450 5200 1500
Wire Wire Line
	4800 2500 4800 1450
Connection ~ 4800 1450
Wire Wire Line
	5750 2450 5800 2450
Wire Wire Line
	5950 1450 5950 2350
Connection ~ 5200 1450
Wire Wire Line
	5950 2650 5950 2750
Wire Wire Line
	5750 2700 6150 2700
Connection ~ 5950 2700
Wire Wire Line
	4250 1650 4250 1450
Connection ~ 4250 1450
$Comp
L GND #PWR5
U 1 1 547741A0
P 4250 2100
F 0 "#PWR5" H 4250 2100 30  0001 C CNN
F 1 "GND" H 4250 2030 30  0001 C CNN
F 2 "" H 4250 2100 60  0000 C CNN
F 3 "" H 4250 2100 60  0000 C CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2050 4250 2100
Wire Wire Line
	6650 2700 7950 2700
Wire Wire Line
	7950 2650 7950 2750
Connection ~ 7950 2700
Wire Wire Line
	7950 2550 7900 2550
Wire Wire Line
	7900 2550 7900 3150
Wire Wire Line
	7950 2850 7900 2850
Connection ~ 7900 2850
$Comp
L GND #PWR12
U 1 1 54774FC1
P 7100 3150
F 0 "#PWR12" H 7100 3150 30  0001 C CNN
F 1 "GND" H 7100 3080 30  0001 C CNN
F 2 "" H 7100 3150 60  0000 C CNN
F 3 "" H 7100 3150 60  0000 C CNN
	1    7100 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 54775134
P 7450 3150
F 0 "#PWR13" H 7450 3150 30  0001 C CNN
F 1 "GND" H 7450 3080 30  0001 C CNN
F 2 "" H 7450 3150 60  0000 C CNN
F 3 "" H 7450 3150 60  0000 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 54775157
P 7900 3150
F 0 "#PWR15" H 7900 3150 30  0001 C CNN
F 1 "GND" H 7900 3080 30  0001 C CNN
F 2 "" H 7900 3150 60  0000 C CNN
F 3 "" H 7900 3150 60  0000 C CNN
	1    7900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3100 7100 3150
Wire Wire Line
	7450 3100 7450 3150
Wire Wire Line
	8000 2100 7800 2100
Wire Wire Line
	7800 2100 7800 2700
Connection ~ 7800 2700
$Comp
L GND #PWR14
U 1 1 5477559C
P 7900 2350
F 0 "#PWR14" H 7900 2350 30  0001 C CNN
F 1 "GND" H 7900 2280 30  0001 C CNN
F 2 "" H 7900 2350 60  0000 C CNN
F 3 "" H 7900 2350 60  0000 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2250 7900 2250
Wire Wire Line
	7900 2250 7900 2350
$Comp
L GND #PWR7
U 1 1 547756FB
P 5950 3200
F 0 "#PWR7" H 5950 3200 30  0001 C CNN
F 1 "GND" H 5950 3130 30  0001 C CNN
F 2 "" H 5950 3200 60  0000 C CNN
F 3 "" H 5950 3200 60  0000 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3200 5950 3150
$Comp
L GND #PWR6
U 1 1 547758A4
P 5200 3500
F 0 "#PWR6" H 5200 3500 30  0001 C CNN
F 1 "GND" H 5200 3430 30  0001 C CNN
F 2 "" H 5200 3500 60  0000 C CNN
F 3 "" H 5200 3500 60  0000 C CNN
	1    5200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3500 5200 3400
Wire Wire Line
	5200 3400 5400 3400
Wire Wire Line
	5900 5150 5900 4900
Wire Wire Line
	5900 4900 6050 4900
$Comp
L JUMP2_2x1 J4
U 1 1 54777542
P 6050 4450
F 0 "J4" H 5850 4350 50  0000 C CNN
F 1 "JUMP2_2x1" H 6250 4350 40  0000 C CNN
F 2 "" H 6050 4450 60  0000 C CNN
F 3 "" H 6050 4450 60  0000 C CNN
	1    6050 4450
	0    1    1    0   
$EndComp
$Comp
L JUMP2_2x1 J5
U 1 1 5477762B
P 6250 4450
F 0 "J5" H 6050 4350 50  0000 C CNN
F 1 "JUMP2_2x1" H 6450 4350 40  0000 C CNN
F 2 "" H 6250 4450 60  0000 C CNN
F 3 "" H 6250 4450 60  0000 C CNN
	1    6250 4450
	0    1    1    0   
$EndComp
$Comp
L JUMP2_2x1 J6
U 1 1 5477765E
P 6450 4450
F 0 "J6" H 6250 4350 50  0000 C CNN
F 1 "JUMP2_2x1" H 6650 4350 40  0000 C CNN
F 2 "" H 6450 4450 60  0000 C CNN
F 3 "" H 6450 4450 60  0000 C CNN
	1    6450 4450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR8
U 1 1 5477797E
P 6050 5500
F 0 "#PWR8" H 6050 5500 30  0001 C CNN
F 1 "GND" H 6050 5430 30  0001 C CNN
F 2 "" H 6050 5500 60  0000 C CNN
F 3 "" H 6050 5500 60  0000 C CNN
	1    6050 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 54777A73
P 6250 5500
F 0 "#PWR9" H 6250 5500 30  0001 C CNN
F 1 "GND" H 6250 5430 30  0001 C CNN
F 2 "" H 6250 5500 60  0000 C CNN
F 3 "" H 6250 5500 60  0000 C CNN
	1    6250 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 54777A98
P 6450 5500
F 0 "#PWR10" H 6450 5500 30  0001 C CNN
F 1 "GND" H 6450 5430 30  0001 C CNN
F 2 "" H 6450 5500 60  0000 C CNN
F 3 "" H 6450 5500 60  0000 C CNN
	1    6450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4100 6800 3800
Wire Wire Line
	4800 4050 6800 4050
Connection ~ 6800 4050
Wire Wire Line
	6050 4100 6050 4050
Connection ~ 6050 4050
Wire Wire Line
	6250 4100 6250 4050
Connection ~ 6250 4050
Wire Wire Line
	6450 3900 6450 4100
Connection ~ 6450 4050
Wire Wire Line
	6450 3400 6450 3350
Wire Wire Line
	6450 3350 6800 3350
Wire Wire Line
	6800 2700 6800 3400
Wire Wire Line
	6050 4900 6050 4750
Wire Wire Line
	6250 4900 6250 4750
Wire Wire Line
	6450 4900 6450 4750
Wire Wire Line
	6050 5400 6050 5500
Wire Wire Line
	6250 5400 6250 5500
Wire Wire Line
	6450 5400 6450 5500
Connection ~ 6800 3350
Connection ~ 6800 2700
Wire Wire Line
	4800 2800 4800 4050
Text Label 5750 4050 0    60   ~ 0
FB
$Comp
L GND #PWR11
U 1 1 54779090
P 6800 4550
F 0 "#PWR11" H 6800 4550 30  0001 C CNN
F 1 "GND" H 6800 4480 30  0001 C CNN
F 2 "" H 6800 4550 60  0000 C CNN
F 3 "" H 6800 4550 60  0000 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4550 6800 4500
Text Label 7550 2700 0    60   ~ 0
Vout
Text Label 5000 2050 0    60   ~ 0
ADJ
$Comp
L _ P1
U 1 1 54779F4D
P 9600 800
F 0 "P1" H 9650 900 50  0000 C CNN
F 1 "_" H 9600 850 40  0000 C CNN
F 2 "" H 9850 650 60  0000 C CNN
F 3 "" H 9850 650 60  0000 C CNN
	1    9600 800 
	-1   0    0    1   
$EndComp
$Comp
L _ P2
U 1 1 5477A27E
P 9600 950
F 0 "P2" H 9650 1050 50  0000 C CNN
F 1 "_" H 9600 1000 40  0000 C CNN
F 2 "" H 9850 800 60  0000 C CNN
F 3 "" H 9850 800 60  0000 C CNN
	1    9600 950 
	-1   0    0    1   
$EndComp
$Comp
L _ P3
U 1 1 5477A2B0
P 10150 800
F 0 "P3" H 10200 900 50  0000 C CNN
F 1 "_" H 10150 850 40  0000 C CNN
F 2 "" H 10400 650 60  0000 C CNN
F 3 "" H 10400 650 60  0000 C CNN
	1    10150 800 
	-1   0    0    1   
$EndComp
$Comp
L _ P4
U 1 1 5477A2F5
P 10150 950
F 0 "P4" H 10200 1050 50  0000 C CNN
F 1 "_" H 10150 1000 40  0000 C CNN
F 2 "" H 10400 800 60  0000 C CNN
F 3 "" H 10400 800 60  0000 C CNN
	1    10150 950 
	-1   0    0    1   
$EndComp
$EndSCHEMATC
