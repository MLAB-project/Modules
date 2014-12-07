EESchema Schematic File Version 2
LIBS:power
LIBS:PCRD01A-cache
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
L R R1
U 1 1 547633B6
P 1550 3500
F 0 "R1" V 1630 3500 40  0000 C CNN
F 1 "4k7" V 1557 3501 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 1480 3500 30  0001 C CNN
F 3 "" H 1550 3500 30  0000 C CNN
	1    1550 3500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 547634EB
P 1550 4000
F 0 "R2" V 1630 4000 40  0000 C CNN
F 1 "4k7" V 1557 4001 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 1480 4000 30  0001 C CNN
F 3 "" H 1550 4000 30  0000 C CNN
	1    1550 4000
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5476354E
P 2000 3750
F 0 "C1" H 2000 3850 40  0000 L CNN
F 1 "4M7" H 2006 3665 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 2038 3600 30  0001 C CNN
F 3 "" H 2000 3750 60  0000 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
$Comp
L MAX4475 U1
U 1 1 547635BB
P 3450 4100
F 0 "U1" H 3600 4400 70  0000 C CNN
F 1 "MAX4475" H 3600 4300 70  0000 C CNN
F 2 "MLAB_IO:SOT-23-6" H 3450 4100 60  0001 C CNN
F 3 "" H 3450 4100 60  0000 C CNN
	1    3450 4100
	1    0    0    -1  
$EndComp
$Comp
L AD8692 U2
U 1 1 54763644
P 5850 4200
F 0 "U2" H 6000 4500 70  0000 C CNN
F 1 "AD8692" H 6000 4400 70  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 5850 4200 60  0001 C CNN
F 3 "" H 5850 4200 60  0000 C CNN
	1    5850 4200
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 547637AA
P 2500 4000
F 0 "D1" H 2500 4100 40  0000 C CNN
F 1 "DIODE" H 2500 3900 40  0000 C CNN
F 2 "" H 2500 4000 60  0001 C CNN
F 3 "" H 2500 4000 60  0000 C CNN
	1    2500 4000
	-1   0    0    1   
$EndComp
$Comp
L JFET_N Q1
U 1 1 54763801
P 2150 3050
F 0 "Q1" H 2053 3300 70  0000 C CNN
F 1 "BF862" H 2003 2803 60  0000 C CNN
F 2 "MLAB_IO:SOT-23" H 2150 3050 60  0001 C CNN
F 3 "" H 2150 3050 60  0000 C CNN
	1    2150 3050
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54763891
P 3350 3050
F 0 "R4" V 3430 3050 40  0000 C CNN
F 1 "2M" V 3357 3051 40  0000 C CNN
F 2 "MLAB_R:SMD-0603" V 3280 3050 30  0001 C CNN
F 3 "" H 3350 3050 30  0000 C CNN
	1    3350 3050
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 547638F8
P 3300 2800
F 0 "C4" H 3300 2900 40  0000 L CNN
F 1 "2" H 3306 2715 40  0000 L CNN
F 2 "MLAB_C:C2pF" H 3338 2650 30  0001 C CNN
F 3 "" H 3300 2800 60  0000 C CNN
	1    3300 2800
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 54763980
P 4450 4100
F 0 "C8" H 4450 4200 40  0000 L CNN
F 1 "330k" H 4456 4015 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 4488 3950 30  0001 C CNN
F 3 "" H 4450 4100 60  0000 C CNN
	1    4450 4100
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54763A05
P 4850 4450
F 0 "R5" V 4930 4450 40  0000 C CNN
F 1 "3k3" V 4857 4451 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 4780 4450 30  0001 C CNN
F 3 "" H 4850 4450 30  0000 C CNN
	1    4850 4450
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 54763AA3
P 6650 4450
F 0 "R6" V 6730 4450 40  0000 C CNN
F 1 "10k" V 6657 4451 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 6580 4450 30  0001 C CNN
F 3 "" H 6650 4450 30  0000 C CNN
	1    6650 4450
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 54763AF2
P 6650 5150
F 0 "R7" V 6730 5150 40  0000 C CNN
F 1 "1k5" V 6657 5151 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 6580 5150 30  0001 C CNN
F 3 "" H 6650 5150 30  0000 C CNN
	1    6650 5150
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 54763B36
P 7000 4450
F 0 "C11" H 7000 4550 40  0000 L CNN
F 1 "510" H 7006 4365 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 7038 4300 30  0001 C CNN
F 3 "" H 7000 4450 60  0000 C CNN
	1    7000 4450
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 54763C78
P 7450 4200
F 0 "R8" V 7530 4200 40  0000 C CNN
F 1 "2k4" V 7457 4201 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 7380 4200 30  0001 C CNN
F 3 "" H 7450 4200 30  0000 C CNN
	1    7450 4200
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 54763CCA
P 8150 4200
F 0 "R9" V 8230 4200 40  0000 C CNN
F 1 "2k2" V 8157 4201 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 8080 4200 30  0001 C CNN
F 3 "" H 8150 4200 30  0000 C CNN
	1    8150 4200
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 54763D3A
P 7800 4450
F 0 "C12" H 7800 4550 40  0000 L CNN
F 1 "620" H 7806 4365 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 7838 4300 30  0001 C CNN
F 3 "" H 7800 4450 60  0000 C CNN
	1    7800 4450
	-1   0    0    1   
$EndComp
$Comp
L C C13
U 1 1 54763DBA
P 9000 3300
F 0 "C13" H 9000 3400 40  0000 L CNN
F 1 "100" H 9006 3215 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 9038 3150 30  0001 C CNN
F 3 "" H 9000 3300 60  0000 C CNN
	1    9000 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 54763E8E
P 8600 3050
F 0 "R10" V 8680 3050 40  0000 C CNN
F 1 "4k7" V 8607 3051 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 8530 3050 30  0001 C CNN
F 3 "" H 8600 3050 30  0000 C CNN
	1    8600 3050
	0    -1   -1   0   
$EndComp
$Comp
L V- #PWR01
U 1 1 547641F4
P 3350 3550
F 0 "#PWR01" H 3350 3650 30  0001 C CNN
F 1 "V-" H 3350 3660 30  0000 C CNN
F 2 "" H 3350 3550 60  0000 C CNN
F 3 "" H 3350 3550 60  0000 C CNN
	1    3350 3550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5476469E
P 2650 4700
F 0 "R3" V 2730 4700 40  0000 C CNN
F 1 "2M" V 2657 4701 40  0000 C CNN
F 2 "MLAB_R:SMD-0603" V 2580 4700 30  0001 C CNN
F 3 "" H 2650 4700 30  0000 C CNN
	1    2650 4700
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5476470D
P 2950 4700
F 0 "C2" H 2950 4800 40  0000 L CNN
F 1 "12p" H 2956 4615 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 2988 4550 30  0001 C CNN
F 3 "" H 2950 4700 60  0000 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 54764791
P 2650 5050
F 0 "#PWR02" H 2650 5050 30  0001 C CNN
F 1 "GND" H 2650 4980 30  0001 C CNN
F 2 "" H 2650 5050 60  0000 C CNN
F 3 "" H 2650 5050 60  0000 C CNN
	1    2650 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 547647A5
P 2950 5050
F 0 "#PWR03" H 2950 5050 30  0001 C CNN
F 1 "GND" H 2950 4980 30  0001 C CNN
F 2 "" H 2950 5050 60  0000 C CNN
F 3 "" H 2950 5050 60  0000 C CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR04
U 1 1 54764B7E
P 3350 4750
F 0 "#PWR04" H 3350 4850 30  0001 C CNN
F 1 "V+" H 3350 4860 30  0000 C CNN
F 2 "" H 3350 4750 60  0000 C CNN
F 3 "" H 3350 4750 60  0000 C CNN
	1    3350 4750
	-1   0    0    1   
$EndComp
$Comp
L V+ #PWR05
U 1 1 54764D10
P 2000 2650
F 0 "#PWR05" H 2000 2750 30  0001 C CNN
F 1 "V+" H 2000 2760 30  0000 C CNN
F 2 "" H 2000 2650 60  0000 C CNN
F 3 "" H 2000 2650 60  0000 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 547653E5
P 4850 4750
F 0 "#PWR06" H 4850 4750 30  0001 C CNN
F 1 "GND" H 4850 4680 30  0001 C CNN
F 2 "" H 4850 4750 60  0000 C CNN
F 3 "" H 4850 4750 60  0000 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 547654DE
P 6650 5450
F 0 "#PWR07" H 6650 5450 30  0001 C CNN
F 1 "GND" H 6650 5380 30  0001 C CNN
F 2 "" H 6650 5450 60  0000 C CNN
F 3 "" H 6650 5450 60  0000 C CNN
	1    6650 5450
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR08
U 1 1 54765630
P 5750 3750
F 0 "#PWR08" H 5750 3850 30  0001 C CNN
F 1 "V-" H 5750 3860 30  0000 C CNN
F 2 "" H 5750 3750 60  0000 C CNN
F 3 "" H 5750 3750 60  0000 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR09
U 1 1 54765667
P 5750 4650
F 0 "#PWR09" H 5750 4750 30  0001 C CNN
F 1 "V+" H 5750 4760 30  0000 C CNN
F 2 "" H 5750 4650 60  0000 C CNN
F 3 "" H 5750 4650 60  0000 C CNN
	1    5750 4650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 54765C64
P 7800 4750
F 0 "#PWR010" H 7800 4750 30  0001 C CNN
F 1 "GND" H 7800 4680 30  0001 C CNN
F 2 "" H 7800 4750 60  0000 C CNN
F 3 "" H 7800 4750 60  0000 C CNN
	1    7800 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 54765C85
P 8600 4100
F 0 "#PWR011" H 8600 4100 30  0001 C CNN
F 1 "GND" H 8600 4030 30  0001 C CNN
F 2 "" H 8600 4100 60  0000 C CNN
F 3 "" H 8600 4100 60  0000 C CNN
	1    8600 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54765CA6
P 10150 4700
F 0 "#PWR012" H 10150 4700 30  0001 C CNN
F 1 "GND" H 10150 4630 30  0001 C CNN
F 2 "" H 10150 4700 60  0000 C CNN
F 3 "" H 10150 4700 60  0000 C CNN
	1    10150 4700
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR013
U 1 1 5476619B
P 9000 3650
F 0 "#PWR013" H 9000 3750 30  0001 C CNN
F 1 "V+" H 9000 3760 30  0000 C CNN
F 2 "" H 9000 3650 60  0000 C CNN
F 3 "" H 9000 3650 60  0000 C CNN
	1    9000 3650
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR014
U 1 1 547662DA
P 9000 4550
F 0 "#PWR014" H 9000 4650 30  0001 C CNN
F 1 "V-" H 9000 4660 30  0000 C CNN
F 2 "" H 9000 4550 60  0000 C CNN
F 3 "" H 9000 4550 60  0000 C CNN
	1    9000 4550
	-1   0    0    1   
$EndComp
$Comp
L C C14
U 1 1 54766490
P 9850 4100
F 0 "C14" H 9850 4200 40  0000 L CNN
F 1 "330k" H 9856 4015 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 9888 3950 30  0001 C CNN
F 3 "" H 9850 4100 60  0000 C CNN
	1    9850 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 547664D3
P 10150 4400
F 0 "R11" V 10230 4400 40  0000 C CNN
F 1 "10k" V 10157 4401 40  0000 C CNN
F 2 "MLAB_R:SMD-0805" V 10080 4400 30  0001 C CNN
F 3 "" H 10150 4400 30  0000 C CNN
	1    10150 4400
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR015
U 1 1 54766B71
P 1200 3500
F 0 "#PWR015" H 1200 3600 30  0001 C CNN
F 1 "V-" H 1200 3610 30  0000 C CNN
F 2 "" H 1200 3500 60  0000 C CNN
F 3 "" H 1200 3500 60  0000 C CNN
	1    1200 3500
	0    -1   -1   0   
$EndComp
$Comp
L AD8692 U2
U 2 1 5476E2B8
P 9100 4100
F 0 "U2" H 9250 4400 70  0000 C CNN
F 1 "AD8692" H 9250 4300 70  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 9100 4100 60  0001 C CNN
F 3 "" H 9100 4100 60  0000 C CNN
	2    9100 4100
	1    0    0    -1  
$EndComp
Text Notes 2200 2350 0    60   ~ 0
low noise charge sensitive amplifier
Text Notes 4450 3850 0    60   ~ 0
highpass\n1 kHz
Text Notes 5500 3450 0    60   ~ 0
amplifier 7,7x
Text Notes 8200 2800 0    60   ~ 0
2nd lowpass 200 kHz\nwith gain 2x
Text Notes 9900 3750 0    60   ~ 0
highpass\n300 Hz
$Comp
L JUMP_5X2 J2
U 1 1 5476EF1F
P 1250 6650
F 0 "J2" H 900 6900 50  0000 C CNN
F 1 "JUMP_5X2" V 1200 6600 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_2x05" H 1250 6650 60  0001 C CNN
F 3 "" H 1250 6650 60  0000 C CNN
	1    1250 6650
	-1   0    0    1   
$EndComp
$Comp
L V- #PWR016
U 1 1 5476F198
P 2000 6300
F 0 "#PWR016" H 2000 6400 30  0001 C CNN
F 1 "V-" H 2000 6410 30  0000 C CNN
F 2 "" H 2000 6300 60  0000 C CNN
F 3 "" H 2000 6300 60  0000 C CNN
	1    2000 6300
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR017
U 1 1 5476F410
P 1800 6300
F 0 "#PWR017" H 1800 6400 30  0001 C CNN
F 1 "V+" H 1800 6410 30  0000 C CNN
F 2 "" H 1800 6300 60  0000 C CNN
F 3 "" H 1800 6300 60  0000 C CNN
	1    1800 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5476F692
P 1750 6900
F 0 "#PWR018" H 1750 6900 30  0001 C CNN
F 1 "GND" H 1750 6830 30  0001 C CNN
F 2 "" H 1750 6900 60  0000 C CNN
F 3 "" H 1750 6900 60  0000 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
Text Notes 1500 6100 0    60   ~ 0
+/- 2,4V
$Comp
L _ P1
U 1 1 5476FB64
P 9950 800
F 0 "P1" H 10000 900 50  0000 C CNN
F 1 "_" H 9950 850 40  0000 C CNN
F 2 "Dira:MountingHole_3mm" H 10200 650 60  0001 C CNN
F 3 "" H 10200 650 60  0000 C CNN
	1    9950 800 
	-1   0    0    1   
$EndComp
$Comp
L _ P2
U 1 1 5476FD65
P 9950 1000
F 0 "P2" H 10000 1100 50  0000 C CNN
F 1 "_" H 9950 1050 40  0000 C CNN
F 2 "Dira:MountingHole_3mm" H 10200 850 60  0001 C CNN
F 3 "" H 10200 850 60  0000 C CNN
	1    9950 1000
	-1   0    0    1   
$EndComp
$Comp
L _ P3
U 1 1 5476FD9A
P 10500 800
F 0 "P3" H 10550 900 50  0000 C CNN
F 1 "_" H 10500 850 40  0000 C CNN
F 2 "Dira:MountingHole_3mm" H 10750 650 60  0001 C CNN
F 3 "" H 10750 650 60  0000 C CNN
	1    10500 800 
	-1   0    0    1   
$EndComp
$Comp
L _ P4
U 1 1 5476FDEC
P 10500 1000
F 0 "P4" H 10550 1100 50  0000 C CNN
F 1 "_" H 10500 1050 40  0000 C CNN
F 2 "Dira:MountingHole_3mm" H 10750 850 60  0001 C CNN
F 3 "" H 10750 850 60  0000 C CNN
	1    10500 1000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR019
U 1 1 5476FFB6
P 10300 1200
F 0 "#PWR019" H 10300 1200 30  0001 C CNN
F 1 "GND" H 10300 1130 30  0001 C CNN
F 2 "" H 10300 1200 60  0000 C CNN
F 3 "" H 10300 1200 60  0000 C CNN
	1    10300 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 54770192
P 10850 1200
F 0 "#PWR020" H 10850 1200 30  0001 C CNN
F 1 "GND" H 10850 1130 30  0001 C CNN
F 2 "" H 10850 1200 60  0000 C CNN
F 3 "" H 10850 1200 60  0000 C CNN
	1    10850 1200
	1    0    0    -1  
$EndComp
$Comp
L JUMP_3X2 J1
U 1 1 54839ABB
P 600 3950
F 0 "J1" H 250 4150 50  0000 C CNN
F 1 "JUMP_3X2" V 600 4000 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_2x03" H 600 3950 60  0001 C CNN
F 3 "" H 600 3950 60  0000 C CNN
	1    600  3950
	-1   0    0    1   
$EndComp
$Comp
L JUMP_3X2 J5
U 1 1 54839C4F
P 10800 4150
F 0 "J5" H 10450 4350 50  0000 C CNN
F 1 "Out" V 10800 4200 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_2x03" H 10800 4150 60  0001 C CNN
F 3 "" H 10800 4150 60  0000 C CNN
	1    10800 4150
	1    0    0    -1  
$EndComp
Text Label 1000 4000 0    60   ~ 0
+Ubias
$Comp
L GND #PWR021
U 1 1 5483A700
P 1050 4200
F 0 "#PWR021" H 1050 4200 30  0001 C CNN
F 1 "GND" H 1050 4130 30  0001 C CNN
F 2 "" H 1050 4200 60  0000 C CNN
F 3 "" H 1050 4200 60  0000 C CNN
	1    1050 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5483A96B
P 10350 4300
F 0 "#PWR022" H 10350 4300 30  0001 C CNN
F 1 "GND" H 10350 4230 30  0001 C CNN
F 2 "" H 10350 4300 60  0000 C CNN
F 3 "" H 10350 4300 60  0000 C CNN
	1    10350 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN1_2 J4
U 1 1 5483AD5F
P 4050 4550
F 0 "J4" H 4100 4650 50  0000 C CNN
F 1 "CONN1_2" H 4150 4500 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_1x02" H 4100 4500 60  0001 C CNN
F 3 "" H 4100 4500 60  0000 C CNN
	1    4050 4550
	1    0    0    -1  
$EndComp
Text Label 3450 4500 0    60   ~ 0
#SHDN
$Comp
L C C3
U 1 1 5483B92F
P 3250 6500
F 0 "C3" H 3250 6600 40  0000 L CNN
F 1 "100nF" H 3256 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 3288 6350 30  0001 C CNN
F 3 "" H 3250 6500 60  0000 C CNN
	1    3250 6500
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5483BA04
P 3500 6500
F 0 "C5" H 3500 6600 40  0000 L CNN
F 1 "100nF" H 3506 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 3538 6350 30  0001 C CNN
F 3 "" H 3500 6500 60  0000 C CNN
	1    3500 6500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5483BC77
P 4250 6500
F 0 "C7" H 4250 6600 40  0000 L CNN
F 1 "100nF" H 4256 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 4288 6350 30  0001 C CNN
F 3 "" H 4250 6500 60  0000 C CNN
	1    4250 6500
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5483BCB5
P 4500 6500
F 0 "C9" H 4500 6600 40  0000 L CNN
F 1 "100nF" H 4506 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 4538 6350 30  0001 C CNN
F 3 "" H 4500 6500 60  0000 C CNN
	1    4500 6500
	1    0    0    -1  
$EndComp
$Comp
L CP2 C10
U 1 1 5483BCD5
P 4750 6500
F 0 "C10" H 4750 6600 40  0000 L CNN
F 1 "10uF" H 4756 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 4788 6350 30  0001 C CNN
F 3 "" H 4750 6500 60  0000 C CNN
	1    4750 6500
	1    0    0    -1  
$EndComp
$Comp
L CP2 C6
U 1 1 5483BE15
P 3700 6500
F 0 "C6" H 3700 6600 40  0000 L CNN
F 1 "10uF" H 3706 6415 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 3738 6350 30  0001 C CNN
F 3 "" H 3700 6500 60  0000 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5483BF92
P 3250 6800
F 0 "#PWR023" H 3250 6800 30  0001 C CNN
F 1 "GND" H 3250 6730 30  0001 C CNN
F 2 "" H 3250 6800 60  0000 C CNN
F 3 "" H 3250 6800 60  0000 C CNN
	1    3250 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5483C039
P 3500 6800
F 0 "#PWR024" H 3500 6800 30  0001 C CNN
F 1 "GND" H 3500 6730 30  0001 C CNN
F 2 "" H 3500 6800 60  0000 C CNN
F 3 "" H 3500 6800 60  0000 C CNN
	1    3500 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5483C06B
P 3700 6800
F 0 "#PWR025" H 3700 6800 30  0001 C CNN
F 1 "GND" H 3700 6730 30  0001 C CNN
F 2 "" H 3700 6800 60  0000 C CNN
F 3 "" H 3700 6800 60  0000 C CNN
	1    3700 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5483C09D
P 4250 6800
F 0 "#PWR026" H 4250 6800 30  0001 C CNN
F 1 "GND" H 4250 6730 30  0001 C CNN
F 2 "" H 4250 6800 60  0000 C CNN
F 3 "" H 4250 6800 60  0000 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5483C0CF
P 4500 6800
F 0 "#PWR027" H 4500 6800 30  0001 C CNN
F 1 "GND" H 4500 6730 30  0001 C CNN
F 2 "" H 4500 6800 60  0000 C CNN
F 3 "" H 4500 6800 60  0000 C CNN
	1    4500 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5483C101
P 4750 6800
F 0 "#PWR028" H 4750 6800 30  0001 C CNN
F 1 "GND" H 4750 6730 30  0001 C CNN
F 2 "" H 4750 6800 60  0000 C CNN
F 3 "" H 4750 6800 60  0000 C CNN
	1    4750 6800
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR029
U 1 1 5483C292
P 3500 6200
F 0 "#PWR029" H 3500 6300 30  0001 C CNN
F 1 "V+" H 3500 6310 30  0000 C CNN
F 2 "" H 3500 6200 60  0000 C CNN
F 3 "" H 3500 6200 60  0000 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR030
U 1 1 5483C2C4
P 4500 6200
F 0 "#PWR030" H 4500 6300 30  0001 C CNN
F 1 "V-" H 4500 6310 30  0000 C CNN
F 2 "" H 4500 6200 60  0000 C CNN
F 3 "" H 4500 6200 60  0000 C CNN
	1    4500 6200
	1    0    0    -1  
$EndComp
$Comp
L CONN1_2 J3
U 1 1 548463A5
P 2500 3450
F 0 "J3" H 2550 3550 50  0000 C CNN
F 1 "CONN1_2" H 2600 3400 40  0000 C CNN
F 2 "Hrebinky:CONN_3_2" H 2550 3400 60  0001 C CNN
F 3 "" H 2550 3400 60  0000 C CNN
	1    2500 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3500 2000 3500
Wire Wire Line
	1800 4000 2300 4000
Wire Wire Line
	2000 4000 2000 3950
Connection ~ 2000 3500
Connection ~ 2000 4000
Wire Wire Line
	2700 4000 2950 4000
Wire Wire Line
	2850 2800 2850 4000
Connection ~ 2850 4000
Connection ~ 2850 3050
Wire Wire Line
	2850 2800 3100 2800
Wire Wire Line
	3600 3050 4050 3050
Wire Wire Line
	4050 2800 4050 4100
Wire Wire Line
	3950 4100 4250 4100
Wire Wire Line
	3500 2800 4050 2800
Connection ~ 4050 3050
Wire Wire Line
	2950 4150 2650 4150
Wire Wire Line
	2650 4150 2650 4450
Wire Wire Line
	2950 4500 2950 4150
Connection ~ 2950 4150
Wire Wire Line
	2650 5050 2650 4950
Wire Wire Line
	2950 5050 2950 4900
Wire Wire Line
	3350 3550 3350 3700
Wire Wire Line
	3350 4500 3350 4750
Wire Wire Line
	5350 4300 5350 4800
Wire Wire Line
	5350 4800 7000 4800
Wire Wire Line
	6650 4700 6650 4900
Connection ~ 6650 4800
Wire Wire Line
	6350 4200 7200 4200
Wire Wire Line
	7000 4200 7000 4250
Connection ~ 6650 4200
Wire Wire Line
	7000 4800 7000 4650
Connection ~ 4050 4100
Wire Wire Line
	4650 4100 5350 4100
Wire Wire Line
	4850 4200 4850 4100
Connection ~ 4850 4100
Wire Wire Line
	4850 4750 4850 4700
Wire Wire Line
	6650 5450 6650 5400
Wire Wire Line
	5750 4650 5750 4600
Wire Wire Line
	5750 3800 5750 3750
Connection ~ 7000 4200
Wire Wire Line
	7700 4200 7900 4200
Wire Wire Line
	7800 3050 7800 4250
Connection ~ 7800 4200
Wire Wire Line
	7800 4750 7800 4650
Wire Wire Line
	9600 3050 9600 4100
Wire Wire Line
	9600 3300 9200 3300
Wire Wire Line
	8850 3050 9600 3050
Connection ~ 9600 3300
Wire Wire Line
	8800 3300 8500 3300
Wire Wire Line
	9000 4550 9000 4500
Wire Wire Line
	9000 3700 9000 3650
Wire Wire Line
	10050 4100 10400 4100
Wire Wire Line
	10150 4150 10150 4100
Connection ~ 10150 4100
Wire Wire Line
	9600 4100 9650 4100
Connection ~ 9600 4100
Wire Wire Line
	10150 4700 10150 4650
Wire Wire Line
	1000 4000 1300 4000
Wire Wire Line
	1300 3500 1200 3500
Wire Wire Line
	8600 4100 8600 4000
Wire Wire Line
	8400 4200 8600 4200
Wire Wire Line
	7800 3050 8350 3050
Wire Wire Line
	8500 3300 8500 4200
Connection ~ 8500 4200
Wire Wire Line
	1650 6600 1800 6600
Wire Wire Line
	1800 6600 1800 6300
Wire Wire Line
	1650 6500 1700 6500
Wire Wire Line
	1700 6500 1700 6700
Wire Wire Line
	1650 6700 2000 6700
Wire Wire Line
	2000 6700 2000 6300
Connection ~ 1700 6700
Wire Wire Line
	1650 6400 1750 6400
Wire Wire Line
	1750 6400 1750 6900
Wire Wire Line
	1750 6800 1650 6800
Connection ~ 1750 6800
Wire Wire Line
	10250 850  10300 850 
Wire Wire Line
	10300 850  10300 1200
Wire Wire Line
	10250 1050 10300 1050
Connection ~ 10300 1050
Wire Wire Line
	10800 850  10850 850 
Wire Wire Line
	10850 850  10850 1200
Wire Wire Line
	10800 1050 10850 1050
Connection ~ 10850 1050
Wire Wire Line
	2300 4000 2300 3750
Wire Wire Line
	2300 3750 2450 3750
Wire Wire Line
	2550 3750 2700 3750
Wire Wire Line
	2700 3750 2700 4000
Connection ~ 2700 4000
Connection ~ 2300 4000
Wire Wire Line
	1000 3900 1050 3900
Wire Wire Line
	1050 3900 1050 4200
Wire Wire Line
	1000 4100 1050 4100
Connection ~ 1050 4100
Wire Wire Line
	10400 4000 10350 4000
Wire Wire Line
	10350 4000 10350 4300
Wire Wire Line
	10400 4200 10350 4200
Connection ~ 10350 4200
Wire Wire Line
	3450 4500 3750 4500
Wire Wire Line
	3350 4600 3750 4600
Connection ~ 3350 4600
Wire Wire Line
	3250 6700 3250 6800
Wire Wire Line
	3500 6700 3500 6800
Wire Wire Line
	3700 6700 3700 6800
Wire Wire Line
	4250 6700 4250 6800
Wire Wire Line
	4500 6700 4500 6800
Wire Wire Line
	4750 6700 4750 6800
Wire Wire Line
	3250 6300 3250 6250
Wire Wire Line
	3250 6250 3700 6250
Wire Wire Line
	3700 6250 3700 6300
Wire Wire Line
	3500 6200 3500 6300
Wire Wire Line
	4750 6300 4750 6250
Wire Wire Line
	4750 6250 4250 6250
Wire Wire Line
	4250 6250 4250 6300
Wire Wire Line
	4500 6200 4500 6300
Connection ~ 4500 6250
Connection ~ 3500 6250
Wire Wire Line
	2000 3400 2000 3550
Wire Wire Line
	2000 2700 2000 2650
Wire Wire Line
	2400 3050 3100 3050
Text Label 2300 3750 0    60   ~ 0
K
Text Label 2650 3750 0    60   ~ 0
A
$EndSCHEMATC
