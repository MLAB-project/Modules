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
Sheet 1 5
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
U 1 1 5318CE48
P 2250 5950
F 0 "#PWR?" H 2250 5950 40  0001 C CNN
F 1 "DGND" H 2250 5880 40  0000 C CNN
F 2 "" H 2250 5950 60  0000 C CNN
F 3 "" H 2250 5950 60  0000 C CNN
	1    2250 5950
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 1 1 5318C1F0
P 1450 1600
F 0 "J?" H 1610 1640 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 1610 1730 60  0001 C CNN
F 2 "FMC" H 1600 1820 60  0001 C CNN
F 3 "" H 1700 1600 60  0000 C CNN
F 4 "ASP-134604-01" H 1610 2030 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 1610 2330 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 1590 1930 60  0001 C CNN "Description"
F 7 "Samtec" H 1580 2240 60  0001 C CNN "Vendor"
F 8 "Samtec" H 1590 2140 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 1670 -2580 50  0000 C CNN "Component Value"
	1    1450 1600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5318D256
P 2450 5450
F 0 "#PWR?" H 2450 5550 40  0001 C CNN
F 1 "3V3" H 2450 5575 40  0000 C CNN
F 2 "" H 2450 5450 60  0000 C CNN
F 3 "" H 2450 5450 60  0000 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 2 1 5318D51C
P 3950 1600
F 0 "J?" H 4110 1640 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 4110 1730 60  0001 C CNN
F 2 "FMC" H 4100 1820 60  0001 C CNN
F 3 "" H 4200 1600 60  0000 C CNN
F 4 "ASP-134604-01" H 4110 2030 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 4110 2330 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 4090 1930 60  0001 C CNN "Description"
F 7 "Samtec" H 4080 2240 60  0001 C CNN "Vendor"
F 8 "Samtec" H 4090 2140 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 4170 -2580 50  0000 C CNN "Component Value"
	2    3950 1600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 531A48BE
P 2400 4900
F 0 "#PWR?" H 2400 4850 20  0001 C CNN
F 1 "+12V" H 2400 5000 30  0000 C CNN
F 2 "" H 2400 4900 60  0000 C CNN
F 3 "" H 2400 4900 60  0000 C CNN
	1    2400 4900
	1    0    0    -1  
$EndComp
Text GLabel 2500 1900 2    60   BiDi ~ 0
DP0_C2M_N
Text GLabel 2500 1800 2    60   BiDi ~ 0
DP0_C2M_P
Text GLabel 2500 2200 2    60   BiDi ~ 0
DP0_M2C_P
Text GLabel 2500 2300 2    60   BiDi ~ 0
DP0_M2C_N
Text GLabel 2500 2600 2    60   BiDi ~ 0
LA06_P
Text GLabel 2500 2700 2    60   BiDi ~ 0
LA06_N
Text GLabel 2500 3000 2    60   BiDi ~ 0
LA10_P
Text GLabel 2500 3100 2    60   BiDi ~ 0
LA10_N
Text GLabel 2500 3400 2    59   BiDi ~ 0
LA14_P
Text GLabel 2500 3500 2    59   BiDi ~ 0
LA14_N
Text GLabel 2500 3800 2    55   BiDi ~ 0
LA18_P_CC
Text GLabel 2500 3900 2    55   BiDi ~ 0
LA18_N_CC
Text GLabel 2500 4200 2    55   BiDi ~ 0
LA27_P
Text GLabel 2500 4300 2    55   BiDi ~ 0
LA27_N
Text GLabel 2500 4600 2    55   Output ~ 0
SCL
Text GLabel 2500 4700 2    55   BiDi ~ 0
SDA
Text GLabel 2650 5000 2    55   Input ~ 0
GA0
Wire Wire Line
	2100 1700 2250 1700
Wire Wire Line
	2250 1700 2250 2000
Wire Wire Line
	2250 2000 2250 2100
Wire Wire Line
	2250 2100 2250 2400
Wire Wire Line
	2250 2400 2250 2500
Wire Wire Line
	2250 2500 2250 2800
Wire Wire Line
	2250 2800 2250 2900
Wire Wire Line
	2250 2900 2250 3200
Wire Wire Line
	2250 3200 2250 3300
Wire Wire Line
	2250 3300 2250 3600
Wire Wire Line
	2250 3600 2250 3700
Wire Wire Line
	2250 3700 2250 4000
Wire Wire Line
	2250 4000 2250 4100
Wire Wire Line
	2250 4100 2250 4400
Wire Wire Line
	2250 4400 2250 4500
Wire Wire Line
	2250 4500 2250 4800
Wire Wire Line
	2250 4800 2250 4900
Wire Wire Line
	2250 4900 2250 5200
Wire Wire Line
	2250 5200 2250 5400
Wire Wire Line
	2250 5400 2250 5600
Wire Wire Line
	2250 5600 2250 5950
Wire Wire Line
	2100 2000 2250 2000
Connection ~ 2250 2000
Wire Wire Line
	2100 2100 2250 2100
Connection ~ 2250 2100
Wire Wire Line
	2100 2400 2250 2400
Connection ~ 2250 2400
Wire Wire Line
	2100 2500 2250 2500
Connection ~ 2250 2500
Wire Wire Line
	2100 2800 2250 2800
Connection ~ 2250 2800
Wire Wire Line
	2100 2900 2250 2900
Connection ~ 2250 2900
Wire Wire Line
	2100 3200 2250 3200
Connection ~ 2250 3200
Wire Wire Line
	2100 3300 2250 3300
Connection ~ 2250 3300
Wire Wire Line
	2100 4900 2250 4900
Connection ~ 2250 4900
Wire Wire Line
	2100 4800 2250 4800
Connection ~ 2250 4800
Wire Wire Line
	2100 4500 2250 4500
Connection ~ 2250 4500
Wire Wire Line
	2100 4400 2250 4400
Connection ~ 2250 4400
Wire Wire Line
	2100 4100 2250 4100
Connection ~ 2250 4100
Wire Wire Line
	2100 4000 2250 4000
Connection ~ 2250 4000
Wire Wire Line
	2100 3700 2250 3700
Connection ~ 2250 3700
Wire Wire Line
	2100 3600 2250 3600
Connection ~ 2250 3600
Wire Wire Line
	2100 5200 2250 5200
Connection ~ 2250 5200
Wire Wire Line
	2100 5400 2250 5400
Connection ~ 2250 5400
Wire Wire Line
	2100 5600 2250 5600
Connection ~ 2250 5600
Wire Wire Line
	2450 5450 2450 5500
Wire Wire Line
	2450 5500 2100 5500
Wire Wire Line
	2100 5300 2200 5300
Wire Wire Line
	2200 5300 2200 5100
Connection ~ 2200 5100
Wire Wire Line
	2500 1800 2100 1800
Wire Wire Line
	2100 1900 2500 1900
Wire Wire Line
	2650 5000 2100 5000
Wire Wire Line
	2500 4700 2100 4700
Wire Wire Line
	2100 4600 2500 4600
Wire Wire Line
	2500 4300 2100 4300
Wire Wire Line
	2100 4200 2500 4200
Wire Wire Line
	2500 3900 2100 3900
Wire Wire Line
	2100 3800 2500 3800
Wire Wire Line
	2500 3500 2100 3500
Wire Wire Line
	2100 3400 2500 3400
Wire Wire Line
	2500 3100 2100 3100
Wire Wire Line
	2100 3000 2500 3000
Wire Wire Line
	2500 2700 2100 2700
Wire Wire Line
	2100 2600 2500 2600
Wire Wire Line
	2100 2200 2500 2200
Wire Wire Line
	2500 2300 2100 2300
Wire Wire Line
	2400 5100 2400 4900
Wire Wire Line
	2100 5100 2200 5100
Wire Wire Line
	2200 5100 2400 5100
$Comp
L DGND #PWR?
U 1 1 531A5661
P 4750 5950
F 0 "#PWR?" H 4750 5950 40  0001 C CNN
F 1 "DGND" H 4750 5880 40  0000 C CNN
F 2 "" H 4750 5950 60  0000 C CNN
F 3 "" H 4750 5950 60  0000 C CNN
	1    4750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1800 4750 1800
Wire Wire Line
	4750 1800 4750 1950
Wire Wire Line
	4750 1950 4750 2200
Wire Wire Line
	4750 2200 4750 2300
Wire Wire Line
	4750 2300 4750 2600
Wire Wire Line
	4750 2600 4750 2900
Wire Wire Line
	4750 2900 4750 3200
Wire Wire Line
	4750 3200 4750 3500
Wire Wire Line
	4750 3500 4750 3800
Wire Wire Line
	4750 3800 4750 4100
Wire Wire Line
	4750 4100 4750 4400
Wire Wire Line
	4750 4400 4750 4450
Wire Wire Line
	4750 4450 4750 5300
Wire Wire Line
	4750 5300 4750 5500
Wire Wire Line
	4750 5500 4750 5950
Wire Wire Line
	4600 1900 4750 1900
Wire Wire Line
	4750 1900 4750 1950
Connection ~ 4750 1950
Wire Wire Line
	4600 2200 4750 2200
Connection ~ 4750 2200
Wire Wire Line
	4600 2300 4750 2300
Connection ~ 4750 2300
Wire Wire Line
	4600 2600 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	4600 2900 4750 2900
Connection ~ 4750 2900
Wire Wire Line
	4600 3200 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4600 3500 4750 3500
Connection ~ 4750 3500
Wire Wire Line
	4600 3800 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4600 4100 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	4600 4400 4750 4400
Wire Wire Line
	4750 4400 4750 4450
Connection ~ 4750 4450
Connection ~ 4750 4400
Wire Wire Line
	4600 5300 4750 5300
Connection ~ 4750 5300
Wire Wire Line
	4600 5500 4750 5500
Connection ~ 4750 5500
$Comp
L 3V3 #PWR?
U 1 1 531A5AD5
P 5250 5350
F 0 "#PWR?" H 5250 5450 40  0001 C CNN
F 1 "3V3" H 5250 5475 40  0000 C CNN
F 2 "" H 5250 5350 60  0000 C CNN
F 3 "" H 5250 5350 60  0000 C CNN
	1    5250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5400 4850 5400
Wire Wire Line
	4850 5400 5250 5400
Wire Wire Line
	4850 5600 4600 5600
Wire Wire Line
	4850 5200 4850 5400
Wire Wire Line
	4850 5400 4850 5600
Connection ~ 4850 5400
Wire Wire Line
	4600 5200 4850 5200
Wire Wire Line
	5250 5400 5250 5350
Text GLabel 5000 1700 2    55   BiDi ~ 0
PG_C2M
Text GLabel 5000 2000 2    55   BiDi ~ 0
GBTCLK0_M2C_P
Text GLabel 5000 2100 2    55   BiDi ~ 0
GBTCLK0_M2C_N
Text GLabel 5000 2400 2    55   BiDi ~ 0
LA01_P_CC
Text GLabel 5000 2500 2    55   BiDi ~ 0
LA01_N_CC
Text GLabel 5000 2700 2    55   BiDi ~ 0
LA05_P
Text GLabel 5000 2800 2    55   BiDi ~ 0
LA05_N
Text GLabel 5000 3000 2    55   BiDi ~ 0
LA09_P
Text GLabel 5000 3100 2    55   BiDi ~ 0
LA09_N
Text GLabel 5000 3300 2    55   BiDi ~ 0
LA13_P
Text GLabel 5000 3400 2    55   BiDi ~ 0
LA13_N
Text GLabel 5000 3600 2    55   BiDi ~ 0
LA17_P_CC
Text GLabel 5000 3700 2    55   BiDi ~ 0
LA17_N_CC
Text GLabel 5000 3900 2    55   BiDi ~ 0
LA23_P
Text GLabel 5000 4000 2    55   BiDi ~ 0
LA23N
Text GLabel 5000 4200 2    55   BiDi ~ 0
LA26_P
Text GLabel 5000 4300 2    55   Input ~ 0
LA26_N
Text GLabel 5000 4500 2    55   Output ~ 0
TCK
Text GLabel 5000 4600 2    55   Input ~ 0
TDI
Text GLabel 5000 4700 2    55   Output ~ 0
TDO
Text GLabel 5000 4900 2    55   BiDi ~ 0
TMS
Text GLabel 5000 5000 2    55   Input ~ 0
TRST_L
Text GLabel 5000 5100 2    55   BiDi ~ 0
GA1
$Comp
L +3.3VP #PWR?
U 1 1 531A5DC1
P 5450 4800
F 0 "#PWR?" H 5500 4830 20  0001 C CNN
F 1 "+3.3VP" H 5450 4890 30  0000 C CNN
F 2 "" H 5450 4800 60  0000 C CNN
F 3 "" H 5450 4800 60  0000 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4800 4600 4800
Wire Wire Line
	4600 4900 5000 4900
Wire Wire Line
	5000 5000 4600 5000
Wire Wire Line
	4600 5100 5000 5100
Wire Wire Line
	5000 4700 4600 4700
Wire Wire Line
	4600 4600 5000 4600
Wire Wire Line
	4600 4500 5000 4500
Wire Wire Line
	5000 4300 4600 4300
Wire Wire Line
	4600 4200 5000 4200
Wire Wire Line
	5000 4000 4600 4000
Wire Wire Line
	4600 3900 5000 3900
Wire Wire Line
	5000 3700 4600 3700
Wire Wire Line
	4600 3600 5000 3600
Wire Wire Line
	5000 3400 4600 3400
Wire Wire Line
	5000 3300 4600 3300
Wire Wire Line
	4600 3100 5000 3100
Wire Wire Line
	5000 3000 4600 3000
Wire Wire Line
	4600 2800 5000 2800
Wire Wire Line
	5000 2700 4600 2700
Wire Wire Line
	4600 2500 5000 2500
Wire Wire Line
	5000 2400 4600 2400
Wire Wire Line
	4600 2100 5000 2100
Wire Wire Line
	4600 2000 5000 2000
Wire Wire Line
	5000 1700 4600 1700
$Comp
L ASP-134604-01_(FMC) J?
U 3 1 531A6AB9
P 6550 1600
F 0 "J?" H 6710 1640 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 6710 1730 60  0001 C CNN
F 2 "FMC" H 6700 1820 60  0001 C CNN
F 3 "" H 6800 1600 60  0000 C CNN
F 4 "ASP-134604-01" H 6710 2030 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 6710 2330 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 6690 1930 60  0001 C CNN "Description"
F 7 "Samtec" H 6680 2240 60  0001 C CNN "Vendor"
F 8 "Samtec" H 6690 2140 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 6770 -2580 50  0000 C CNN "Component Value"
	3    6550 1600
	1    0    0    -1  
$EndComp
$Comp
L ASP-134604-01_(FMC) J?
U 4 1 531A6AF7
P 8650 1600
F 0 "J?" H 8810 1640 50  0000 C CNN
F 1 "ASP-134604-01_(FMC)" H 8810 1730 60  0001 C CNN
F 2 "FMC" H 8800 1820 60  0001 C CNN
F 3 "" H 8900 1600 60  0000 C CNN
F 4 "ASP-134604-01" H 8810 2030 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 8810 2330 60  0001 C CNN "Vendor Part Number"
F 6 "FMC_Connector" H 8790 1930 60  0001 C CNN "Description"
F 7 "Samtec" H 8780 2240 60  0001 C CNN "Vendor"
F 8 "Samtec" H 8790 2140 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 8870 -2580 50  0000 C CNN "Component Value"
	4    8650 1600
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 531A6B33
P 7350 5950
F 0 "#PWR?" H 7350 5950 40  0001 C CNN
F 1 "DGND" H 7350 5880 40  0000 C CNN
F 2 "" H 7350 5950 60  0000 C CNN
F 3 "" H 7350 5950 60  0000 C CNN
	1    7350 5950
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 531A6B39
P 9450 5950
F 0 "#PWR?" H 9450 5950 40  0001 C CNN
F 1 "DGND" H 9450 5880 40  0000 C CNN
F 2 "" H 9450 5950 60  0000 C CNN
F 3 "" H 9450 5950 60  0000 C CNN
	1    9450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1700 7350 1700
Wire Wire Line
	7350 1700 7350 2000
Wire Wire Line
	7350 2000 7350 2100
Wire Wire Line
	7350 2100 7350 2400
Wire Wire Line
	7350 2400 7350 2700
Wire Wire Line
	7350 2700 7350 3000
Wire Wire Line
	7350 3000 7350 3300
Wire Wire Line
	7350 3300 7350 3600
Wire Wire Line
	7350 3600 7350 3900
Wire Wire Line
	7350 3900 7350 4200
Wire Wire Line
	7350 4200 7350 4500
Wire Wire Line
	7350 4500 7350 4800
Wire Wire Line
	7350 4800 7350 5100
Wire Wire Line
	7350 5100 7350 5400
Wire Wire Line
	7350 5400 7350 5600
Wire Wire Line
	7350 5600 7350 5950
Wire Wire Line
	7200 2000 7350 2000
Connection ~ 7350 2000
Wire Wire Line
	7200 2100 7350 2100
Connection ~ 7350 2100
Wire Wire Line
	7200 2400 7350 2400
Connection ~ 7350 2400
Wire Wire Line
	7200 2700 7350 2700
Connection ~ 7350 2700
Wire Wire Line
	7200 3000 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	7200 3300 7350 3300
Connection ~ 7350 3300
Wire Wire Line
	7200 3600 7350 3600
Connection ~ 7350 3600
Wire Wire Line
	7200 3900 7350 3900
Connection ~ 7350 3900
Wire Wire Line
	7200 4200 7350 4200
Connection ~ 7350 4200
Wire Wire Line
	7200 4500 7350 4500
Connection ~ 7350 4500
Wire Wire Line
	7200 4800 7350 4800
Connection ~ 7350 4800
Wire Wire Line
	7200 5100 7350 5100
Connection ~ 7350 5100
Wire Wire Line
	7200 5400 7350 5400
Connection ~ 7350 5400
Wire Wire Line
	7200 5600 7350 5600
Connection ~ 7350 5600
Wire Wire Line
	9300 1900 9450 1900
Wire Wire Line
	9450 1900 9450 2200
Wire Wire Line
	9450 2200 9450 2500
Wire Wire Line
	9450 2500 9450 2800
Wire Wire Line
	9450 2800 9450 3100
Wire Wire Line
	9450 3100 9450 3400
Wire Wire Line
	9450 3400 9450 3700
Wire Wire Line
	9450 3700 9450 4000
Wire Wire Line
	9450 4000 9450 4300
Wire Wire Line
	9450 4300 9450 4600
Wire Wire Line
	9450 4600 9450 4900
Wire Wire Line
	9450 4900 9450 5200
Wire Wire Line
	9450 5200 9450 5500
Wire Wire Line
	9450 5500 9450 5950
Wire Wire Line
	9300 2200 9450 2200
Connection ~ 9450 2200
Wire Wire Line
	9300 2500 9450 2500
Connection ~ 9450 2500
Wire Wire Line
	9300 2800 9450 2800
Connection ~ 9450 2800
Wire Wire Line
	9300 3100 9450 3100
Connection ~ 9450 3100
Wire Wire Line
	9300 3400 9450 3400
Connection ~ 9450 3400
Wire Wire Line
	9300 3700 9450 3700
Connection ~ 9450 3700
Wire Wire Line
	9300 4000 9450 4000
Connection ~ 9450 4000
Wire Wire Line
	9300 4300 9450 4300
Connection ~ 9450 4300
Wire Wire Line
	9300 4600 9450 4600
Connection ~ 9450 4600
Wire Wire Line
	9300 4900 9450 4900
Connection ~ 9450 4900
Wire Wire Line
	9300 5200 9450 5200
Connection ~ 9450 5200
Wire Wire Line
	9300 5500 9450 5500
Connection ~ 9450 5500
Text GLabel 7550 1800 2    55   BiDi ~ 0
CLK1_M2C_P
Text GLabel 7550 1900 2    55   BiDi ~ 0
CLK1_M2C_N
Text GLabel 7550 2200 2    55   BiDi ~ 0
LA00_P_CC
Text GLabel 7550 2300 2    55   BiDi ~ 0
LA00_N_CC
Text GLabel 7550 2500 2    55   BiDi ~ 0
LA03_P
Text GLabel 7550 2600 2    55   BiDi ~ 0
LA03_N
Text GLabel 7550 2800 2    55   BiDi ~ 0
LA08_P
Text GLabel 7550 2900 2    55   BiDi ~ 0
LA08_N
Text GLabel 7550 3100 2    55   BiDi ~ 0
LA12_P
Text GLabel 7550 3200 2    55   BiDi ~ 0
LA12_N
Text GLabel 7550 3400 2    55   BiDi ~ 0
LA16_P
Text GLabel 7550 3500 2    55   BiDi ~ 0
LA16_N
Text GLabel 7550 3700 2    55   BiDi ~ 0
LA20_P
Text GLabel 7550 3800 2    55   BiDi ~ 0
LA20_N
Text GLabel 7550 4000 2    55   BiDi ~ 0
LA22_P
Text GLabel 7550 4100 2    55   BiDi ~ 0
LA22_N
Text GLabel 7550 4300 2    55   BiDi ~ 0
LA25_P
Text GLabel 7550 4400 2    55   BiDi ~ 0
LA25_N
Text GLabel 7550 4600 2    55   BiDi ~ 0
LA29_P
Text GLabel 7550 4700 2    55   BiDi ~ 0
LA29_N
Text GLabel 7550 4900 2    55   BiDi ~ 0
LA31_P
Text GLabel 7550 5000 2    55   BiDi ~ 0
LA31_N
Text GLabel 7550 5200 2    55   BiDi ~ 0
LA33_P
Text GLabel 7550 5300 2    55   BiDi ~ 0
LA33_N
$Comp
L VDD #PWR?
U 1 1 531B8EBE
P 8100 5450
F 0 "#PWR?" H 8100 5550 30  0001 C CNN
F 1 "VDD" H 8100 5560 30  0000 C CNN
F 2 "" H 8100 5450 60  0000 C CNN
F 3 "" H 8100 5450 60  0000 C CNN
	1    8100 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 1800 7550 1800
Wire Wire Line
	7550 1900 7200 1900
Wire Wire Line
	7200 2200 7550 2200
Wire Wire Line
	7550 2300 7200 2300
Wire Wire Line
	7200 2500 7550 2500
Wire Wire Line
	7550 2600 7200 2600
Wire Wire Line
	7200 2800 7550 2800
Wire Wire Line
	7200 2900 7550 2900
Wire Wire Line
	7550 3100 7200 3100
Wire Wire Line
	7200 3200 7550 3200
Wire Wire Line
	7550 3400 7200 3400
Wire Wire Line
	7200 3500 7550 3500
Wire Wire Line
	7550 3700 7200 3700
Wire Wire Line
	7200 3800 7550 3800
Wire Wire Line
	7550 4000 7200 4000
Wire Wire Line
	7200 4100 7550 4100
Wire Wire Line
	7550 4300 7200 4300
Wire Wire Line
	7550 4400 7200 4400
Wire Wire Line
	7200 4600 7550 4600
Wire Wire Line
	7550 4700 7200 4700
Wire Wire Line
	7200 4900 7550 4900
Wire Wire Line
	7550 5000 7200 5000
Wire Wire Line
	7200 5200 7550 5200
Wire Wire Line
	7550 5300 7200 5300
Text GLabel 9650 1700 2    55   UnSpc ~ 0
VREF_A_M2C
Text GLabel 9650 1800 2    55   BiDi ~ 0
PRSNT_M2C_L
Wire Wire Line
	7200 5500 8100 5500
Wire Wire Line
	8100 5500 8100 5450
Text GLabel 9650 2000 2    55   BiDi ~ 0
CLK0_M2C_P
Text GLabel 9650 2100 2    55   BiDi ~ 0
CLK0_M2C_N
Text GLabel 9650 2300 2    55   BiDi ~ 0
LA02_P
Text GLabel 9650 2400 2    55   BiDi ~ 0
LA02_N
Text GLabel 9650 2600 2    55   BiDi ~ 0
LA04_P
Text GLabel 9650 2700 2    55   BiDi ~ 0
LA04_N
Text GLabel 9650 2900 2    55   BiDi ~ 0
LA07_P
Text GLabel 9650 3000 2    55   BiDi ~ 0
LA07_N
Text GLabel 9650 3200 2    55   BiDi ~ 0
LA11_P
Text GLabel 9650 3300 2    55   BiDi ~ 0
LA11_N
Text GLabel 9650 3500 2    55   BiDi ~ 0
LA15_P
Text GLabel 9650 3600 2    55   BiDi ~ 0
LA15_N
Text GLabel 9650 3800 2    55   BiDi ~ 0
LA19_P
Text GLabel 9650 3900 2    55   BiDi ~ 0
LA19_N
Text GLabel 9650 4100 2    55   BiDi ~ 0
LA21_P
Text GLabel 9650 4200 2    55   BiDi ~ 0
LA21_N
Text GLabel 9650 4400 2    55   BiDi ~ 0
LA24_P
Text GLabel 9650 4500 2    55   BiDi ~ 0
LA24_N
Text GLabel 9650 4700 2    55   BiDi ~ 0
LA28_P
Text GLabel 9650 4800 2    55   BiDi ~ 0
LA28_N
Text GLabel 9650 5000 2    55   BiDi ~ 0
LA30_P
Text GLabel 9650 5100 2    55   BiDi ~ 0
LA30_N
Text GLabel 9650 5300 2    55   BiDi ~ 0
LA32_P
Text GLabel 9650 5400 2    55   BiDi ~ 0
LA32_N
$Comp
L VDD #PWR?
U 1 1 531BA508
P 10300 5500
F 0 "#PWR?" H 10300 5600 30  0001 C CNN
F 1 "VDD" H 10300 5610 30  0000 C CNN
F 2 "" H 10300 5500 60  0000 C CNN
F 3 "" H 10300 5500 60  0000 C CNN
	1    10300 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 1700 9300 1700
Wire Wire Line
	9300 1800 9650 1800
Wire Wire Line
	9650 2000 9300 2000
Wire Wire Line
	9300 2100 9650 2100
Wire Wire Line
	9650 2300 9300 2300
Wire Wire Line
	9300 2400 9650 2400
Wire Wire Line
	9650 2600 9300 2600
Wire Wire Line
	9300 2700 9650 2700
Wire Wire Line
	9650 2900 9300 2900
Wire Wire Line
	9300 3000 9650 3000
Wire Wire Line
	9650 3200 9300 3200
Wire Wire Line
	9300 3300 9650 3300
Wire Wire Line
	9300 3500 9650 3500
Wire Wire Line
	9300 3600 9650 3600
Wire Wire Line
	9650 3800 9300 3800
Wire Wire Line
	9650 3900 9300 3900
Wire Wire Line
	9300 4100 9650 4100
Wire Wire Line
	9650 4200 9300 4200
Wire Wire Line
	9300 4400 9650 4400
Wire Wire Line
	9650 4500 9300 4500
Wire Wire Line
	9300 4700 9650 4700
Wire Wire Line
	9650 4800 9300 4800
Wire Wire Line
	9300 5000 9650 5000
Wire Wire Line
	9300 5100 9650 5100
Wire Wire Line
	9650 5300 9300 5300
Wire Wire Line
	9300 5400 9650 5400
Wire Wire Line
	9300 5600 10300 5600
Wire Wire Line
	10300 5600 10300 5500
$Sheet
S -800 8550 1100 600 
U 531BC008
F0 "miniSAS" 50
F1 "diff_connectors.sch" 50
$EndSheet
$EndSCHEMATC
