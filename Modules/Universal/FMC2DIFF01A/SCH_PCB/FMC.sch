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
LIBS:con-cypressindustries
LIBS:Universal
LIBS:FMC2DIFF-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L DGND #PWR?
U 1 1 531CAA69
P 2350 6000
F 0 "#PWR?" H 2350 6000 40  0001 C CNN
F 1 "DGND" H 2350 5930 40  0000 C CNN
F 2 "" H 2350 6000 60  0000 C CNN
F 3 "" H 2350 6000 60  0000 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 1 1 531CAA75
P 1550 1650
F 0 "J?" H 1710 1690 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 1710 1780 60  0001 C CNN
F 2 "FMC" H 1700 1870 60  0001 C CNN
F 3 "" H 1800 1650 60  0000 C CNN
F 4 "ASP-134604-01" H 1710 2080 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 1710 2380 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 1690 1980 60  0001 C CNN "Description"
F 7 "Samtec" H 1680 2290 60  0001 C CNN "Vendor"
F 8 "Samtec" H 1690 2190 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 1770 -2530 50  0000 C CNN "Component Value"
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 531CAA7B
P 2550 5500
F 0 "#PWR?" H 2550 5600 40  0001 C CNN
F 1 "3V3" H 2550 5625 40  0000 C CNN
F 2 "" H 2550 5500 60  0000 C CNN
F 3 "" H 2550 5500 60  0000 C CNN
	1    2550 5500
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 1 1 531CAA87
P 4050 1650
F 0 "J?" H 4210 1690 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 4210 1780 60  0001 C CNN
F 2 "FMC" H 4200 1870 60  0001 C CNN
F 3 "" H 4300 1650 60  0000 C CNN
F 4 "ASP-134604-01" H 4210 2080 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 4210 2380 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 4190 1980 60  0001 C CNN "Description"
F 7 "Samtec" H 4180 2290 60  0001 C CNN "Vendor"
F 8 "Samtec" H 4190 2190 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 4270 -2530 50  0000 C CNN "Component Value"
	1    4050 1650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 531CAA8D
P 2500 4950
F 0 "#PWR?" H 2500 4900 20  0001 C CNN
F 1 "+12V" H 2500 5050 30  0000 C CNN
F 2 "" H 2500 4950 60  0000 C CNN
F 3 "" H 2500 4950 60  0000 C CNN
	1    2500 4950
	1    0    0    -1  
$EndComp
Text GLabel 2600 1950 2    60   BiDi ~ 0
DP0_C2M_N
Text GLabel 2600 1850 2    60   BiDi ~ 0
DP0_C2M_P
Text GLabel 2600 2250 2    60   BiDi ~ 0
DP0_M2C_P
Text GLabel 2600 2350 2    60   BiDi ~ 0
DP0_M2C_N
Text GLabel 2600 2650 2    60   BiDi ~ 0
LA06_P
Text GLabel 2600 2750 2    60   BiDi ~ 0
LA06_N
Text GLabel 2600 3050 2    60   BiDi ~ 0
LA10_P
Text GLabel 2600 3150 2    60   BiDi ~ 0
LA10_N
Text GLabel 2600 3450 2    59   BiDi ~ 0
LA14_P
Text GLabel 2600 3550 2    59   BiDi ~ 0
LA14_N
Text GLabel 2600 3850 2    55   BiDi ~ 0
LA18_P_CC
Text GLabel 2600 3950 2    55   BiDi ~ 0
LA18_N_CC
Text GLabel 2600 4250 2    55   BiDi ~ 0
LA27_P
Text GLabel 2600 4350 2    55   BiDi ~ 0
LA27_N
Text GLabel 2600 4650 2    55   Output ~ 0
SCL
Text GLabel 2600 4750 2    55   BiDi ~ 0
SDA
Text GLabel 2750 5050 2    55   Input ~ 0
GA0
Wire Wire Line
	2200 1750 2350 1750
Wire Wire Line
	2350 1750 2350 2050
Wire Wire Line
	2350 2050 2350 2150
Wire Wire Line
	2350 2150 2350 2450
Wire Wire Line
	2350 2450 2350 2550
Wire Wire Line
	2350 2550 2350 2850
Wire Wire Line
	2350 2850 2350 2950
Wire Wire Line
	2350 2950 2350 3250
Wire Wire Line
	2350 3250 2350 3350
Wire Wire Line
	2350 3350 2350 3650
Wire Wire Line
	2350 3650 2350 3750
Wire Wire Line
	2350 3750 2350 4050
Wire Wire Line
	2350 4050 2350 4150
Wire Wire Line
	2350 4150 2350 4450
Wire Wire Line
	2350 4450 2350 4550
Wire Wire Line
	2350 4550 2350 4850
Wire Wire Line
	2350 4850 2350 4950
Wire Wire Line
	2350 4950 2350 5250
Wire Wire Line
	2350 5250 2350 5450
Wire Wire Line
	2350 5450 2350 5650
Wire Wire Line
	2350 5650 2350 6000
Wire Wire Line
	2200 2050 2350 2050
Connection ~ 2350 2050
Wire Wire Line
	2200 2150 2350 2150
Connection ~ 2350 2150
Wire Wire Line
	2200 2450 2350 2450
Connection ~ 2350 2450
Wire Wire Line
	2200 2550 2350 2550
Connection ~ 2350 2550
Wire Wire Line
	2200 2850 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	2200 2950 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	2200 3250 2350 3250
Connection ~ 2350 3250
Wire Wire Line
	2200 3350 2350 3350
Connection ~ 2350 3350
Wire Wire Line
	2200 4950 2350 4950
Connection ~ 2350 4950
Wire Wire Line
	2200 4850 2350 4850
Connection ~ 2350 4850
Wire Wire Line
	2200 4550 2350 4550
Connection ~ 2350 4550
Wire Wire Line
	2200 4450 2350 4450
Connection ~ 2350 4450
Wire Wire Line
	2200 4150 2350 4150
Connection ~ 2350 4150
Wire Wire Line
	2200 4050 2350 4050
Connection ~ 2350 4050
Wire Wire Line
	2200 3750 2350 3750
Connection ~ 2350 3750
Wire Wire Line
	2200 3650 2350 3650
Connection ~ 2350 3650
Wire Wire Line
	2200 5250 2350 5250
Connection ~ 2350 5250
Wire Wire Line
	2200 5450 2350 5450
Connection ~ 2350 5450
Wire Wire Line
	2200 5650 2350 5650
Connection ~ 2350 5650
Wire Wire Line
	2550 5500 2550 5550
Wire Wire Line
	2550 5550 2200 5550
Wire Wire Line
	2200 5350 2300 5350
Wire Wire Line
	2300 5350 2300 5150
Connection ~ 2300 5150
Wire Wire Line
	2600 1850 2200 1850
Wire Wire Line
	2200 1950 2600 1950
Wire Wire Line
	2750 5050 2200 5050
Wire Wire Line
	2600 4750 2200 4750
Wire Wire Line
	2200 4650 2600 4650
Wire Wire Line
	2600 4350 2200 4350
Wire Wire Line
	2200 4250 2600 4250
Wire Wire Line
	2600 3950 2200 3950
Wire Wire Line
	2200 3850 2600 3850
Wire Wire Line
	2600 3550 2200 3550
Wire Wire Line
	2200 3450 2600 3450
Wire Wire Line
	2600 3150 2200 3150
Wire Wire Line
	2200 3050 2600 3050
Wire Wire Line
	2600 2750 2200 2750
Wire Wire Line
	2200 2650 2600 2650
Wire Wire Line
	2200 2250 2600 2250
Wire Wire Line
	2600 2350 2200 2350
Wire Wire Line
	2500 5150 2500 4950
Wire Wire Line
	2200 5150 2300 5150
Wire Wire Line
	2300 5150 2500 5150
$Comp
L DGND #PWR?
U 1 1 531CAAF8
P 4850 6000
F 0 "#PWR?" H 4850 6000 40  0001 C CNN
F 1 "DGND" H 4850 5930 40  0000 C CNN
F 2 "" H 4850 6000 60  0000 C CNN
F 3 "" H 4850 6000 60  0000 C CNN
	1    4850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1850 4850 1850
Wire Wire Line
	4850 1850 4850 2000
Wire Wire Line
	4850 2000 4850 2250
Wire Wire Line
	4850 2250 4850 2350
Wire Wire Line
	4850 2350 4850 2650
Wire Wire Line
	4850 2650 4850 2950
Wire Wire Line
	4850 2950 4850 3250
Wire Wire Line
	4850 3250 4850 3550
Wire Wire Line
	4850 3550 4850 3850
Wire Wire Line
	4850 3850 4850 4150
Wire Wire Line
	4850 4150 4850 4450
Wire Wire Line
	4850 4450 4850 4500
Wire Wire Line
	4850 4500 4850 5350
Wire Wire Line
	4850 5350 4850 5550
Wire Wire Line
	4850 5550 4850 6000
Wire Wire Line
	4700 1950 4850 1950
Wire Wire Line
	4850 1950 4850 2000
Connection ~ 4850 2000
Wire Wire Line
	4700 2250 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	4700 2350 4850 2350
Connection ~ 4850 2350
Wire Wire Line
	4700 2650 4850 2650
Connection ~ 4850 2650
Wire Wire Line
	4700 2950 4850 2950
Connection ~ 4850 2950
Wire Wire Line
	4700 3250 4850 3250
Connection ~ 4850 3250
Wire Wire Line
	4700 3550 4850 3550
Connection ~ 4850 3550
Wire Wire Line
	4700 3850 4850 3850
Connection ~ 4850 3850
Wire Wire Line
	4700 4150 4850 4150
Connection ~ 4850 4150
Wire Wire Line
	4700 4450 4850 4450
Wire Wire Line
	4850 4450 4850 4500
Connection ~ 4850 4500
Connection ~ 4850 4450
Wire Wire Line
	4700 5350 4850 5350
Connection ~ 4850 5350
Wire Wire Line
	4700 5550 4850 5550
Connection ~ 4850 5550
$Comp
L 3V3 #PWR?
U 1 1 531CAB28
P 5350 5400
F 0 "#PWR?" H 5350 5500 40  0001 C CNN
F 1 "3V3" H 5350 5525 40  0000 C CNN
F 2 "" H 5350 5400 60  0000 C CNN
F 3 "" H 5350 5400 60  0000 C CNN
	1    5350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5450 4950 5450
Wire Wire Line
	4950 5450 5350 5450
Wire Wire Line
	4950 5650 4700 5650
Wire Wire Line
	4950 5250 4950 5450
Wire Wire Line
	4950 5450 4950 5650
Connection ~ 4950 5450
Wire Wire Line
	4700 5250 4950 5250
Wire Wire Line
	5350 5450 5350 5400
Text GLabel 5100 1750 2    55   BiDi ~ 0
PG_C2M
Text GLabel 5100 2050 2    55   BiDi ~ 0
GBTCLK0_M2C_P
Text GLabel 5100 2150 2    55   BiDi ~ 0
GBTCLK0_M2C_N
Text GLabel 5100 2450 2    55   BiDi ~ 0
LA01_P_CC
Text GLabel 5100 2550 2    55   BiDi ~ 0
LA01_N_CC
Text GLabel 5100 2750 2    55   BiDi ~ 0
LA05_P
Text GLabel 5100 2850 2    55   BiDi ~ 0
LA05_N
Text GLabel 5100 3050 2    55   BiDi ~ 0
LA09_P
Text GLabel 5100 3150 2    55   BiDi ~ 0
LA09_N
Text GLabel 5100 3350 2    55   BiDi ~ 0
LA13_P
Text GLabel 5100 3450 2    55   BiDi ~ 0
LA13_N
Text GLabel 5100 3650 2    55   BiDi ~ 0
LA17_P_CC
Text GLabel 5100 3750 2    55   BiDi ~ 0
LA17_N_CC
Text GLabel 5100 3950 2    55   BiDi ~ 0
LA23_P
Text GLabel 5100 4050 2    55   BiDi ~ 0
LA23N
Text GLabel 5100 4250 2    55   BiDi ~ 0
LA26_P
Text GLabel 5100 4350 2    55   Input ~ 0
LA26_N
Text GLabel 5100 4550 2    55   Output ~ 0
TCK
Text GLabel 5100 4650 2    55   Input ~ 0
TDI
Text GLabel 5100 4750 2    55   Output ~ 0
TDO
Text GLabel 5100 4950 2    55   BiDi ~ 0
TMS
Text GLabel 5100 5050 2    55   Input ~ 0
TRST_L
Text GLabel 5100 5150 2    55   BiDi ~ 0
GA1
$Comp
L +3.3VP #PWR?
U 1 1 531CAB4D
P 5550 4850
F 0 "#PWR?" H 5600 4880 20  0001 C CNN
F 1 "+3.3VP" H 5550 4940 30  0000 C CNN
F 2 "" H 5550 4850 60  0000 C CNN
F 3 "" H 5550 4850 60  0000 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4850 4700 4850
Wire Wire Line
	4700 4950 5100 4950
Wire Wire Line
	5100 5050 4700 5050
Wire Wire Line
	4700 5150 5100 5150
Wire Wire Line
	5100 4750 4700 4750
Wire Wire Line
	4700 4650 5100 4650
Wire Wire Line
	4700 4550 5100 4550
Wire Wire Line
	5100 4350 4700 4350
Wire Wire Line
	4700 4250 5100 4250
Wire Wire Line
	5100 4050 4700 4050
Wire Wire Line
	4700 3950 5100 3950
Wire Wire Line
	5100 3750 4700 3750
Wire Wire Line
	4700 3650 5100 3650
Wire Wire Line
	5100 3450 4700 3450
Wire Wire Line
	5100 3350 4700 3350
Wire Wire Line
	4700 3150 5100 3150
Wire Wire Line
	5100 3050 4700 3050
Wire Wire Line
	4700 2850 5100 2850
Wire Wire Line
	5100 2750 4700 2750
Wire Wire Line
	4700 2550 5100 2550
Wire Wire Line
	5100 2450 4700 2450
Wire Wire Line
	4700 2150 5100 2150
Wire Wire Line
	4700 2050 5100 2050
Wire Wire Line
	5100 1750 4700 1750
$Comp
L ASP-134604-01_(FMC) J?
U 1 1 531CAB71
P 6650 1650
F 0 "J?" H 6810 1690 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 6810 1780 60  0001 C CNN
F 2 "FMC" H 6800 1870 60  0001 C CNN
F 3 "" H 6900 1650 60  0000 C CNN
F 4 "ASP-134604-01" H 6810 2080 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 6810 2380 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 6790 1980 60  0001 C CNN "Description"
F 7 "Samtec" H 6780 2290 60  0001 C CNN "Vendor"
F 8 "Samtec" H 6790 2190 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 6870 -2530 50  0000 C CNN "Component Value"
	1    6650 1650
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 1 1 531CAB7D
P 8750 1650
F 0 "J?" H 8910 1690 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 8910 1780 60  0001 C CNN
F 2 "FMC" H 8900 1870 60  0001 C CNN
F 3 "" H 9000 1650 60  0000 C CNN
F 4 "ASP-134604-01" H 8910 2080 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 8910 2380 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 8890 1980 60  0001 C CNN "Description"
F 7 "Samtec" H 8880 2290 60  0001 C CNN "Vendor"
F 8 "Samtec" H 8890 2190 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 8970 -2530 50  0000 C CNN "Component Value"
	1    8750 1650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 531CAB83
P 7450 6000
F 0 "#PWR?" H 7450 6000 40  0001 C CNN
F 1 "DGND" H 7450 5930 40  0000 C CNN
F 2 "" H 7450 6000 60  0000 C CNN
F 3 "" H 7450 6000 60  0000 C CNN
	1    7450 6000
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 531CAB89
P 9550 6000
F 0 "#PWR?" H 9550 6000 40  0001 C CNN
F 1 "DGND" H 9550 5930 40  0000 C CNN
F 2 "" H 9550 6000 60  0000 C CNN
F 3 "" H 9550 6000 60  0000 C CNN
	1    9550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1750 7450 1750
Wire Wire Line
	7450 1750 7450 2050
Wire Wire Line
	7450 2050 7450 2150
Wire Wire Line
	7450 2150 7450 2450
Wire Wire Line
	7450 2450 7450 2750
Wire Wire Line
	7450 2750 7450 3050
Wire Wire Line
	7450 3050 7450 3350
Wire Wire Line
	7450 3350 7450 3650
Wire Wire Line
	7450 3650 7450 3950
Wire Wire Line
	7450 3950 7450 4250
Wire Wire Line
	7450 4250 7450 4550
Wire Wire Line
	7450 4550 7450 4850
Wire Wire Line
	7450 4850 7450 5150
Wire Wire Line
	7450 5150 7450 5450
Wire Wire Line
	7450 5450 7450 5650
Wire Wire Line
	7450 5650 7450 6000
Wire Wire Line
	7300 2050 7450 2050
Connection ~ 7450 2050
Wire Wire Line
	7300 2150 7450 2150
Connection ~ 7450 2150
Wire Wire Line
	7300 2450 7450 2450
Connection ~ 7450 2450
Wire Wire Line
	7300 2750 7450 2750
Connection ~ 7450 2750
Wire Wire Line
	7300 3050 7450 3050
Connection ~ 7450 3050
Wire Wire Line
	7300 3350 7450 3350
Connection ~ 7450 3350
Wire Wire Line
	7300 3650 7450 3650
Connection ~ 7450 3650
Wire Wire Line
	7300 3950 7450 3950
Connection ~ 7450 3950
Wire Wire Line
	7300 4250 7450 4250
Connection ~ 7450 4250
Wire Wire Line
	7300 4550 7450 4550
Connection ~ 7450 4550
Wire Wire Line
	7300 4850 7450 4850
Connection ~ 7450 4850
Wire Wire Line
	7300 5150 7450 5150
Connection ~ 7450 5150
Wire Wire Line
	7300 5450 7450 5450
Connection ~ 7450 5450
Wire Wire Line
	7300 5650 7450 5650
Connection ~ 7450 5650
Wire Wire Line
	9400 1950 9550 1950
Wire Wire Line
	9550 1950 9550 2250
Wire Wire Line
	9550 2250 9550 2550
Wire Wire Line
	9550 2550 9550 2850
Wire Wire Line
	9550 2850 9550 3150
Wire Wire Line
	9550 3150 9550 3450
Wire Wire Line
	9550 3450 9550 3750
Wire Wire Line
	9550 3750 9550 4050
Wire Wire Line
	9550 4050 9550 4350
Wire Wire Line
	9550 4350 9550 4650
Wire Wire Line
	9550 4650 9550 4950
Wire Wire Line
	9550 4950 9550 5250
Wire Wire Line
	9550 5250 9550 5550
Wire Wire Line
	9550 5550 9550 6000
Wire Wire Line
	9400 2250 9550 2250
Connection ~ 9550 2250
Wire Wire Line
	9400 2550 9550 2550
Connection ~ 9550 2550
Wire Wire Line
	9400 2850 9550 2850
Connection ~ 9550 2850
Wire Wire Line
	9400 3150 9550 3150
Connection ~ 9550 3150
Wire Wire Line
	9400 3450 9550 3450
Connection ~ 9550 3450
Wire Wire Line
	9400 3750 9550 3750
Connection ~ 9550 3750
Wire Wire Line
	9400 4050 9550 4050
Connection ~ 9550 4050
Wire Wire Line
	9400 4350 9550 4350
Connection ~ 9550 4350
Wire Wire Line
	9400 4650 9550 4650
Connection ~ 9550 4650
Wire Wire Line
	9400 4950 9550 4950
Connection ~ 9550 4950
Wire Wire Line
	9400 5250 9550 5250
Connection ~ 9550 5250
Wire Wire Line
	9400 5550 9550 5550
Connection ~ 9550 5550
Text GLabel 7650 1850 2    55   BiDi ~ 0
CLK1_M2C_P
Text GLabel 7650 1950 2    55   BiDi ~ 0
CLK1_M2C_N
Text GLabel 7650 2250 2    55   BiDi ~ 0
LA00_P_CC
Text GLabel 7650 2350 2    55   BiDi ~ 0
LA00_N_CC
Text GLabel 7650 2550 2    55   BiDi ~ 0
LA03_P
Text GLabel 7650 2650 2    55   BiDi ~ 0
LA03_N
Text GLabel 7650 2850 2    55   BiDi ~ 0
LA08_P
Text GLabel 7650 2950 2    55   BiDi ~ 0
LA08_N
Text GLabel 7650 3150 2    55   BiDi ~ 0
LA12_P
Text GLabel 7650 3250 2    55   BiDi ~ 0
LA12_N
Text GLabel 7650 3450 2    55   BiDi ~ 0
LA16_P
Text GLabel 7650 3550 2    55   BiDi ~ 0
LA16_N
Text GLabel 7650 3750 2    55   BiDi ~ 0
LA20_P
Text GLabel 7650 3850 2    55   BiDi ~ 0
LA20_N
Text GLabel 7650 4050 2    55   BiDi ~ 0
LA22_P
Text GLabel 7650 4150 2    55   BiDi ~ 0
LA22_N
Text GLabel 7650 4350 2    55   BiDi ~ 0
LA25_P
Text GLabel 7650 4450 2    55   BiDi ~ 0
LA25_N
Text GLabel 7650 4650 2    55   BiDi ~ 0
LA29_P
Text GLabel 7650 4750 2    55   BiDi ~ 0
LA29_N
Text GLabel 7650 4950 2    55   BiDi ~ 0
LA31_P
Text GLabel 7650 5050 2    55   BiDi ~ 0
LA31_N
Text GLabel 7650 5250 2    55   BiDi ~ 0
LA33_P
Text GLabel 7650 5350 2    55   BiDi ~ 0
LA33_N
$Comp
L VDD #PWR?
U 1 1 531CABF9
P 8200 5500
F 0 "#PWR?" H 8200 5600 30  0001 C CNN
F 1 "VDD" H 8200 5610 30  0000 C CNN
F 2 "" H 8200 5500 60  0000 C CNN
F 3 "" H 8200 5500 60  0000 C CNN
	1    8200 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 1850 7650 1850
Wire Wire Line
	7650 1950 7300 1950
Wire Wire Line
	7300 2250 7650 2250
Wire Wire Line
	7650 2350 7300 2350
Wire Wire Line
	7300 2550 7650 2550
Wire Wire Line
	7650 2650 7300 2650
Wire Wire Line
	7300 2850 7650 2850
Wire Wire Line
	7300 2950 7650 2950
Wire Wire Line
	7650 3150 7300 3150
Wire Wire Line
	7300 3250 7650 3250
Wire Wire Line
	7650 3450 7300 3450
Wire Wire Line
	7300 3550 7650 3550
Wire Wire Line
	7650 3750 7300 3750
Wire Wire Line
	7300 3850 7650 3850
Wire Wire Line
	7650 4050 7300 4050
Wire Wire Line
	7300 4150 7650 4150
Wire Wire Line
	7650 4350 7300 4350
Wire Wire Line
	7650 4450 7300 4450
Wire Wire Line
	7300 4650 7650 4650
Wire Wire Line
	7650 4750 7300 4750
Wire Wire Line
	7300 4950 7650 4950
Wire Wire Line
	7650 5050 7300 5050
Wire Wire Line
	7300 5250 7650 5250
Wire Wire Line
	7650 5350 7300 5350
Text GLabel 9750 1750 2    55   UnSpc ~ 0
VREF_A_M2C
Text GLabel 9750 1850 2    55   BiDi ~ 0
PRSNT_M2C_L
Wire Wire Line
	7300 5550 8200 5550
Wire Wire Line
	8200 5550 8200 5500
Text GLabel 9750 2050 2    55   BiDi ~ 0
CLK0_M2C_P
Text GLabel 9750 2150 2    55   BiDi ~ 0
CLK0_M2C_N
Text GLabel 9750 2350 2    55   BiDi ~ 0
LA02_P
Text GLabel 9750 2450 2    55   BiDi ~ 0
LA02_N
Text GLabel 9750 2650 2    55   BiDi ~ 0
LA04_P
Text GLabel 9750 2750 2    55   BiDi ~ 0
LA04_N
Text GLabel 9750 2950 2    55   BiDi ~ 0
LA07_P
Text GLabel 9750 3050 2    55   BiDi ~ 0
LA07_N
Text GLabel 9750 3250 2    55   BiDi ~ 0
LA11_P
Text GLabel 9750 3350 2    55   BiDi ~ 0
LA11_N
Text GLabel 9750 3550 2    55   BiDi ~ 0
LA15_P
Text GLabel 9750 3650 2    55   BiDi ~ 0
LA15_N
Text GLabel 9750 3850 2    55   BiDi ~ 0
LA19_P
Text GLabel 9750 3950 2    55   BiDi ~ 0
LA19_N
Text GLabel 9750 4150 2    55   BiDi ~ 0
LA21_P
Text GLabel 9750 4250 2    55   BiDi ~ 0
LA21_N
Text GLabel 9750 4450 2    55   BiDi ~ 0
LA24_P
Text GLabel 9750 4550 2    55   BiDi ~ 0
LA24_N
Text GLabel 9750 4750 2    55   BiDi ~ 0
LA28_P
Text GLabel 9750 4850 2    55   BiDi ~ 0
LA28_N
Text GLabel 9750 5050 2    55   BiDi ~ 0
LA30_P
Text GLabel 9750 5150 2    55   BiDi ~ 0
LA30_N
Text GLabel 9750 5350 2    55   BiDi ~ 0
LA32_P
Text GLabel 9750 5450 2    55   BiDi ~ 0
LA32_N
$Comp
L VDD #PWR?
U 1 1 531CAC33
P 10400 5550
F 0 "#PWR?" H 10400 5650 30  0001 C CNN
F 1 "VDD" H 10400 5660 30  0000 C CNN
F 2 "" H 10400 5550 60  0000 C CNN
F 3 "" H 10400 5550 60  0000 C CNN
	1    10400 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 1750 9400 1750
Wire Wire Line
	9400 1850 9750 1850
Wire Wire Line
	9750 2050 9400 2050
Wire Wire Line
	9400 2150 9750 2150
Wire Wire Line
	9750 2350 9400 2350
Wire Wire Line
	9400 2450 9750 2450
Wire Wire Line
	9750 2650 9400 2650
Wire Wire Line
	9400 2750 9750 2750
Wire Wire Line
	9750 2950 9400 2950
Wire Wire Line
	9400 3050 9750 3050
Wire Wire Line
	9750 3250 9400 3250
Wire Wire Line
	9400 3350 9750 3350
Wire Wire Line
	9400 3550 9750 3550
Wire Wire Line
	9400 3650 9750 3650
Wire Wire Line
	9750 3850 9400 3850
Wire Wire Line
	9750 3950 9400 3950
Wire Wire Line
	9400 4150 9750 4150
Wire Wire Line
	9750 4250 9400 4250
Wire Wire Line
	9400 4450 9750 4450
Wire Wire Line
	9750 4550 9400 4550
Wire Wire Line
	9400 4750 9750 4750
Wire Wire Line
	9750 4850 9400 4850
Wire Wire Line
	9400 5050 9750 5050
Wire Wire Line
	9400 5150 9750 5150
Wire Wire Line
	9750 5350 9400 5350
Wire Wire Line
	9400 5450 9750 5450
Wire Wire Line
	9400 5650 10400 5650
Wire Wire Line
	10400 5650 10400 5550
$EndSCHEMATC
