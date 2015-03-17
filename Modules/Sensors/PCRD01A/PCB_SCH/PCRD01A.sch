EESchema Schematic File Version 2
LIBS:power
LIBS:PCRD01A-cache
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
L R R1
U 1 1 547633B6
P 2050 3450
F 0 "R1" V 2130 3450 40  0000 C CNN
F 1 "4k7" V 2057 3451 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1980 3450 30  0001 C CNN
F 3 "" H 2050 3450 30  0000 C CNN
	1    2050 3450
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 547634EB
P 1350 3950
F 0 "R2" V 1430 3950 40  0000 C CNN
F 1 "4k7" V 1357 3951 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1280 3950 30  0001 C CNN
F 3 "" H 1350 3950 30  0000 C CNN
	1    1350 3950
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5476354E
P 2500 3700
F 0 "C1" H 2500 3800 40  0000 L CNN
F 1 "4u7" H 2506 3615 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2538 3550 30  0001 C CNN
F 3 "" H 2500 3700 60  0000 C CNN
	1    2500 3700
	1    0    0    -1  
$EndComp
$Comp
L MAX4475 U1
U 1 1 547635BB
P 3950 4050
F 0 "U1" H 4100 4350 70  0000 C CNN
F 1 "MAX4475" H 4100 4250 70  0000 C CNN
F 2 "MLAB_IO:SOT-23-6" H 3950 4050 60  0001 C CNN
F 3 "" H 3950 4050 60  0000 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
$Comp
L AD8692 U2
U 1 1 54763644
P 6350 4150
F 0 "U2" H 6500 4450 70  0000 C CNN
F 1 "AD8692" H 6500 4350 70  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 6350 4150 60  0001 C CNN
F 3 "" H 6350 4150 60  0000 C CNN
	1    6350 4150
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 547637AA
P 3000 3950
F 0 "D1" H 3000 4050 40  0000 C CNN
F 1 "DIODE" H 3000 3850 40  0000 C CNN
F 2 "" H 3000 3950 60  0001 C CNN
F 3 "" H 3000 3950 60  0000 C CNN
	1    3000 3950
	-1   0    0    1   
$EndComp
$Comp
L JFET_N Q1
U 1 1 54763801
P 2650 3000
F 0 "Q1" H 2553 3250 70  0000 C CNN
F 1 "BF862" H 2503 2753 60  0000 C CNN
F 2 "MLAB_IO:SOT-23" H 2650 3000 60  0001 C CNN
F 3 "" H 2650 3000 60  0000 C CNN
	1    2650 3000
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54763891
P 3850 3000
F 0 "R4" V 3930 3000 40  0000 C CNN
F 1 "2M" V 3857 3001 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3780 3000 30  0001 C CNN
F 3 "" H 3850 3000 30  0000 C CNN
	1    3850 3000
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 547638F8
P 3800 2750
F 0 "C4" H 3800 2850 40  0000 L CNN
F 1 "2pF" H 3806 2665 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3838 2600 30  0001 C CNN
F 3 "" H 3800 2750 60  0000 C CNN
	1    3800 2750
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 54763980
P 4950 4050
F 0 "C8" H 4950 4150 40  0000 L CNN
F 1 "330nF" H 4956 3965 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4988 3900 30  0001 C CNN
F 3 "" H 4950 4050 60  0000 C CNN
	1    4950 4050
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54763A05
P 5350 4400
F 0 "R5" V 5430 4400 40  0000 C CNN
F 1 "3k3" V 5357 4401 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 5280 4400 30  0001 C CNN
F 3 "" H 5350 4400 30  0000 C CNN
	1    5350 4400
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 54763AA3
P 7150 4400
F 0 "R6" V 7230 4400 40  0000 C CNN
F 1 "10k" V 7157 4401 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7080 4400 30  0001 C CNN
F 3 "" H 7150 4400 30  0000 C CNN
	1    7150 4400
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 54763AF2
P 7150 5100
F 0 "R7" V 7230 5100 40  0000 C CNN
F 1 "1k5" V 7157 5101 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7080 5100 30  0001 C CNN
F 3 "" H 7150 5100 30  0000 C CNN
	1    7150 5100
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 54763B36
P 7500 4400
F 0 "C11" H 7500 4500 40  0000 L CNN
F 1 "510pF" H 7506 4315 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 7538 4250 30  0001 C CNN
F 3 "" H 7500 4400 60  0000 C CNN
	1    7500 4400
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 54763C78
P 7950 4150
F 0 "R8" V 8030 4150 40  0000 C CNN
F 1 "2k4" V 7957 4151 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7880 4150 30  0001 C CNN
F 3 "" H 7950 4150 30  0000 C CNN
	1    7950 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 54763CCA
P 8650 4150
F 0 "R9" V 8730 4150 40  0000 C CNN
F 1 "2k2" V 8657 4151 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 8580 4150 30  0001 C CNN
F 3 "" H 8650 4150 30  0000 C CNN
	1    8650 4150
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 54763D3A
P 8300 4400
F 0 "C12" H 8300 4500 40  0000 L CNN
F 1 "620pF" H 8306 4315 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 8338 4250 30  0001 C CNN
F 3 "" H 8300 4400 60  0000 C CNN
	1    8300 4400
	-1   0    0    1   
$EndComp
$Comp
L C C13
U 1 1 54763DBA
P 9500 3250
F 0 "C13" H 9500 3350 40  0000 L CNN
F 1 "100pF" H 9506 3165 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 9538 3100 30  0001 C CNN
F 3 "" H 9500 3250 60  0000 C CNN
	1    9500 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 54763E8E
P 9100 3000
F 0 "R10" V 9180 3000 40  0000 C CNN
F 1 "4k7" V 9107 3001 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 9030 3000 30  0001 C CNN
F 3 "" H 9100 3000 30  0000 C CNN
	1    9100 3000
	0    -1   -1   0   
$EndComp
$Comp
L V- #PWR01
U 1 1 547641F4
P 3850 4700
F 0 "#PWR01" H 3850 4800 30  0001 C CNN
F 1 "V-" H 3850 4810 30  0000 C CNN
F 2 "" H 3850 4700 60  0000 C CNN
F 3 "" H 3850 4700 60  0000 C CNN
	1    3850 4700
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5476469E
P 3150 4650
F 0 "R3" V 3230 4650 40  0000 C CNN
F 1 "2M" V 3157 4651 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3080 4650 30  0001 C CNN
F 3 "" H 3150 4650 30  0000 C CNN
	1    3150 4650
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5476470D
P 3450 4650
F 0 "C2" H 3450 4750 40  0000 L CNN
F 1 "12p" H 3456 4565 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3488 4500 30  0001 C CNN
F 3 "" H 3450 4650 60  0000 C CNN
	1    3450 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 54764791
P 3150 5000
F 0 "#PWR02" H 3150 5000 30  0001 C CNN
F 1 "GND" H 3150 4930 30  0001 C CNN
F 2 "" H 3150 5000 60  0000 C CNN
F 3 "" H 3150 5000 60  0000 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 547647A5
P 3450 5000
F 0 "#PWR03" H 3450 5000 30  0001 C CNN
F 1 "GND" H 3450 4930 30  0001 C CNN
F 2 "" H 3450 5000 60  0000 C CNN
F 3 "" H 3450 5000 60  0000 C CNN
	1    3450 5000
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR04
U 1 1 54764B7E
P 3850 3500
F 0 "#PWR04" H 3850 3600 30  0001 C CNN
F 1 "V+" H 3850 3610 30  0000 C CNN
F 2 "" H 3850 3500 60  0000 C CNN
F 3 "" H 3850 3500 60  0000 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR05
U 1 1 54764D10
P 2500 2600
F 0 "#PWR05" H 2500 2700 30  0001 C CNN
F 1 "V+" H 2500 2710 30  0000 C CNN
F 2 "" H 2500 2600 60  0000 C CNN
F 3 "" H 2500 2600 60  0000 C CNN
	1    2500 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 547653E5
P 5350 4700
F 0 "#PWR06" H 5350 4700 30  0001 C CNN
F 1 "GND" H 5350 4630 30  0001 C CNN
F 2 "" H 5350 4700 60  0000 C CNN
F 3 "" H 5350 4700 60  0000 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 547654DE
P 7150 5400
F 0 "#PWR07" H 7150 5400 30  0001 C CNN
F 1 "GND" H 7150 5330 30  0001 C CNN
F 2 "" H 7150 5400 60  0000 C CNN
F 3 "" H 7150 5400 60  0000 C CNN
	1    7150 5400
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR08
U 1 1 54765630
P 6250 4600
F 0 "#PWR08" H 6250 4700 30  0001 C CNN
F 1 "V-" H 6250 4710 30  0000 C CNN
F 2 "" H 6250 4600 60  0000 C CNN
F 3 "" H 6250 4600 60  0000 C CNN
	1    6250 4600
	-1   0    0    1   
$EndComp
$Comp
L V+ #PWR09
U 1 1 54765667
P 6250 3700
F 0 "#PWR09" H 6250 3800 30  0001 C CNN
F 1 "V+" H 6250 3810 30  0000 C CNN
F 2 "" H 6250 3700 60  0000 C CNN
F 3 "" H 6250 3700 60  0000 C CNN
	1    6250 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54765C64
P 8300 4700
F 0 "#PWR010" H 8300 4700 30  0001 C CNN
F 1 "GND" H 8300 4630 30  0001 C CNN
F 2 "" H 8300 4700 60  0000 C CNN
F 3 "" H 8300 4700 60  0000 C CNN
	1    8300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 54765C85
P 9100 4000
F 0 "#PWR011" H 9100 4000 30  0001 C CNN
F 1 "GND" H 9100 3930 30  0001 C CNN
F 2 "" H 9100 4000 60  0000 C CNN
F 3 "" H 9100 4000 60  0000 C CNN
	1    9100 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54765CA6
P 10650 4650
F 0 "#PWR012" H 10650 4650 30  0001 C CNN
F 1 "GND" H 10650 4580 30  0001 C CNN
F 2 "" H 10650 4650 60  0000 C CNN
F 3 "" H 10650 4650 60  0000 C CNN
	1    10650 4650
	1    0    0    -1  
$EndComp
$Comp
L V+ #PWR013
U 1 1 5476619B
P 9500 3600
F 0 "#PWR013" H 9500 3700 30  0001 C CNN
F 1 "V+" H 9500 3710 30  0000 C CNN
F 2 "" H 9500 3600 60  0000 C CNN
F 3 "" H 9500 3600 60  0000 C CNN
	1    9500 3600
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR014
U 1 1 547662DA
P 9500 4500
F 0 "#PWR014" H 9500 4600 30  0001 C CNN
F 1 "V-" H 9500 4610 30  0000 C CNN
F 2 "" H 9500 4500 60  0000 C CNN
F 3 "" H 9500 4500 60  0000 C CNN
	1    9500 4500
	-1   0    0    1   
$EndComp
$Comp
L C C14
U 1 1 54766490
P 10350 4050
F 0 "C14" H 10350 4150 40  0000 L CNN
F 1 "330nF" H 10356 3965 40  0000 L CNN
F 2 "MLAB_R:SMD-0805" H 10388 3900 30  0001 C CNN
F 3 "" H 10350 4050 60  0000 C CNN
	1    10350 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 547664D3
P 10650 4350
F 0 "R11" V 10730 4350 40  0000 C CNN
F 1 "10k" V 10657 4351 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 10580 4350 30  0001 C CNN
F 3 "" H 10650 4350 30  0000 C CNN
	1    10650 4350
	1    0    0    -1  
$EndComp
$Comp
L V- #PWR015
U 1 1 54766B71
P 1700 3450
F 0 "#PWR015" H 1700 3550 30  0001 C CNN
F 1 "V-" H 1700 3560 30  0000 C CNN
F 2 "" H 1700 3450 60  0000 C CNN
F 3 "" H 1700 3450 60  0000 C CNN
	1    1700 3450
	0    -1   -1   0   
$EndComp
$Comp
L AD8692 U2
U 2 1 5476E2B8
P 9600 4050
F 0 "U2" H 9750 4350 70  0000 C CNN
F 1 "AD8692" H 9750 4250 70  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 9600 4050 60  0001 C CNN
F 3 "" H 9600 4050 60  0000 C CNN
	2    9600 4050
	1    0    0    -1  
$EndComp
Text Notes 2700 2300 0    60   ~ 0
low noise charge sensitive amplifier
Text Notes 4950 3800 0    60   ~ 0
highpass\n1 kHz
Text Notes 6000 3400 0    60   ~ 0
amplifier 7,7x
Text Notes 8700 2750 0    60   ~ 0
2nd lowpass 200 kHz\nwith gain 2x
Text Notes 10400 3700 0    60   ~ 0
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
P 400 3900
F 0 "J1" H 50  4100 50  0000 C CNN
F 1 "JUMP_3X2" V 400 3950 40  0001 C CNN
F 2 "Hrebinky:Pin_Header_Straight_2x03" H 400 3900 60  0001 C CNN
F 3 "" H 400 3900 60  0000 C CNN
	1    400  3900
	-1   0    0    1   
$EndComp
$Comp
L JUMP_3X2 J5
U 1 1 54839C4F
P 11300 4100
F 0 "J5" H 10950 4300 50  0000 C CNN
F 1 "Out" V 11100 4500 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_2x03" H 11300 4100 60  0001 C CNN
F 3 "" H 11300 4100 60  0000 C CNN
	1    11300 4100
	1    0    0    -1  
$EndComp
Text Label 800  3950 0    60   ~ 0
+Ubias
$Comp
L GND #PWR021
U 1 1 5483A700
P 850 4150
F 0 "#PWR021" H 850 4150 30  0001 C CNN
F 1 "GND" H 850 4080 30  0001 C CNN
F 2 "" H 850 4150 60  0000 C CNN
F 3 "" H 850 4150 60  0000 C CNN
	1    850  4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5483A96B
P 10850 4250
F 0 "#PWR022" H 10850 4250 30  0001 C CNN
F 1 "GND" H 10850 4180 30  0001 C CNN
F 2 "" H 10850 4250 60  0000 C CNN
F 3 "" H 10850 4250 60  0000 C CNN
	1    10850 4250
	1    0    0    -1  
$EndComp
$Comp
L CONN1_2 J4
U 1 1 5483AD5F
P 4550 4500
F 0 "J4" H 4600 4600 50  0000 C CNN
F 1 "CONN1_2" H 4650 4450 40  0000 C CNN
F 2 "Hrebinky:Pin_Header_Straight_1x02" H 4600 4450 60  0001 C CNN
F 3 "" H 4600 4450 60  0000 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Text Label 3950 4450 0    60   ~ 0
#SHDN
$Comp
L C C3
U 1 1 5483B92F
P 3250 6500
F 0 "C3" H 3250 6600 40  0000 L CNN
F 1 "100nF" H 3256 6415 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3288 6350 30  0001 C CNN
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
F 2 "Mlab_R:SMD-0805" H 3538 6350 30  0001 C CNN
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
F 2 "Mlab_R:SMD-0805" H 4288 6350 30  0001 C CNN
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
F 2 "Mlab_R:SMD-0805" H 4538 6350 30  0001 C CNN
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
F 2 "Mlab_R:SMD-0805" H 4788 6350 30  0001 C CNN
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
F 2 "Mlab_R:SMD-0805" H 3738 6350 30  0001 C CNN
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
P 3000 3400
F 0 "J3" H 3050 3500 50  0000 C CNN
F 1 "CONN1_2" H 3100 3350 40  0000 C CNN
F 2 "Hrebinky:CONN_3_2" H 3050 3350 60  0001 C CNN
F 3 "" H 3050 3350 60  0000 C CNN
	1    3000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3450 2500 3450
Wire Wire Line
	2500 3950 2500 3900
Connection ~ 2500 3450
Connection ~ 2500 3950
Wire Wire Line
	3200 3950 3450 3950
Wire Wire Line
	3350 2750 3350 3950
Connection ~ 3350 3950
Connection ~ 3350 3000
Wire Wire Line
	3350 2750 3600 2750
Wire Wire Line
	4100 3000 4550 3000
Wire Wire Line
	4550 2750 4550 4050
Wire Wire Line
	4450 4050 4750 4050
Wire Wire Line
	4000 2750 4550 2750
Connection ~ 4550 3000
Wire Wire Line
	3450 4100 3150 4100
Wire Wire Line
	3150 4100 3150 4400
Wire Wire Line
	3450 4450 3450 4100
Connection ~ 3450 4100
Wire Wire Line
	3150 5000 3150 4900
Wire Wire Line
	3450 5000 3450 4850
Wire Wire Line
	3850 3500 3850 3650
Wire Wire Line
	3850 4450 3850 4700
Wire Wire Line
	5850 4250 5850 4750
Wire Wire Line
	5850 4750 7500 4750
Wire Wire Line
	7150 4650 7150 4850
Connection ~ 7150 4750
Wire Wire Line
	6850 4150 7700 4150
Wire Wire Line
	7500 4150 7500 4200
Connection ~ 7150 4150
Wire Wire Line
	7500 4750 7500 4600
Connection ~ 4550 4050
Wire Wire Line
	5150 4050 5850 4050
Wire Wire Line
	5350 4150 5350 4050
Connection ~ 5350 4050
Wire Wire Line
	5350 4700 5350 4650
Wire Wire Line
	7150 5400 7150 5350
Wire Wire Line
	6250 4600 6250 4550
Wire Wire Line
	6250 3750 6250 3700
Connection ~ 7500 4150
Wire Wire Line
	8200 4150 8400 4150
Wire Wire Line
	8300 3000 8300 4200
Connection ~ 8300 4150
Wire Wire Line
	8300 4700 8300 4600
Wire Wire Line
	10100 3000 10100 4050
Wire Wire Line
	10100 3250 9700 3250
Wire Wire Line
	9350 3000 10100 3000
Connection ~ 10100 3250
Wire Wire Line
	9300 3250 9000 3250
Wire Wire Line
	9500 4500 9500 4450
Wire Wire Line
	9500 3650 9500 3600
Wire Wire Line
	10550 4050 10900 4050
Wire Wire Line
	10650 4100 10650 4050
Connection ~ 10650 4050
Wire Wire Line
	10100 4050 10150 4050
Connection ~ 10100 4050
Wire Wire Line
	10650 4650 10650 4600
Wire Wire Line
	800  3950 1100 3950
Wire Wire Line
	1800 3450 1700 3450
Wire Wire Line
	8900 4150 9100 4150
Wire Wire Line
	8300 3000 8850 3000
Wire Wire Line
	9000 3250 9000 4150
Connection ~ 9000 4150
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
	2800 3950 2800 3700
Wire Wire Line
	2800 3700 2950 3700
Wire Wire Line
	3050 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3950
Connection ~ 3200 3950
Connection ~ 2800 3950
Wire Wire Line
	800  3850 850  3850
Wire Wire Line
	850  3850 850  4150
Wire Wire Line
	800  4050 850  4050
Connection ~ 850  4050
Wire Wire Line
	10900 3950 10850 3950
Wire Wire Line
	10850 3950 10850 4250
Wire Wire Line
	10900 4150 10850 4150
Connection ~ 10850 4150
Wire Wire Line
	3950 4450 4250 4450
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
	2500 3350 2500 3500
Wire Wire Line
	2500 2650 2500 2600
Wire Wire Line
	2900 3000 3600 3000
Text Label 2800 3700 0    60   ~ 0
K
Text Label 3150 3700 0    60   ~ 0
A
$Comp
L V+ #PWR031
U 1 1 54F0D885
P 4150 4600
F 0 "#PWR031" H 4150 4700 30  0001 C CNN
F 1 "V+" H 4150 4710 30  0000 C CNN
F 2 "" H 4150 4600 60  0000 C CNN
F 3 "" H 4150 4600 60  0000 C CNN
	1    4150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4600 4250 4600
Wire Wire Line
	4250 4600 4250 4550
Wire Wire Line
	9100 4000 9100 3950
$Comp
L R R12
U 1 1 5507D916
P 2050 3950
F 0 "R12" V 2130 3950 40  0000 C CNN
F 1 "4k7" V 2057 3951 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1980 3950 30  0001 C CNN
F 3 "" H 2050 3950 30  0000 C CNN
	1    2050 3950
	0    1    1    0   
$EndComp
$Comp
L C C15
U 1 1 5507D99A
P 1700 4200
F 0 "C15" H 1700 4300 40  0000 L CNN
F 1 "1u" H 1706 4115 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 1738 4050 30  0001 C CNN
F 3 "" H 1700 4200 60  0000 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5507D9FB
P 1700 4450
F 0 "#PWR032" H 1700 4450 30  0001 C CNN
F 1 "GND" H 1700 4380 30  0001 C CNN
F 2 "" H 1700 4450 60  0000 C CNN
F 3 "" H 1700 4450 60  0000 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4450 1700 4400
Wire Wire Line
	1600 3950 1800 3950
Wire Wire Line
	1700 4000 1700 3950
Connection ~ 1700 3950
Wire Wire Line
	2300 3950 2800 3950
$EndSCHEMATC
