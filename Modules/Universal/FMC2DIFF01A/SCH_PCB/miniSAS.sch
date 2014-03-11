EESchema Schematic File Version 2
LIBS:conn
LIBS:power
LIBS:device
LIBS:transistors
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
LIBS:konektory
LIBS:FMC2DIFF-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L SAS_mini_1888174 J?
U 1 1 531F7DD7
P 3050 2900
F 0 "J?" H 2650 4600 60  0000 C CNN
F 1 "SAS_mini_1888174" H 2950 2500 60  0000 C CNN
F 2 "" H 3450 2850 60  0000 C CNN
F 3 "" H 3450 2850 60  0000 C CNN
	1    3050 2900
	1    0    0    -1  
$EndComp
$Comp
L SAS_mini_1888174 J?
U 2 1 531F7DEB
P 6400 2900
F 0 "J?" H 6000 4600 60  0000 C CNN
F 1 "SAS_mini_1888174" H 6300 2500 60  0000 C CNN
F 2 "" H 6800 2850 60  0000 C CNN
F 3 "" H 6800 2850 60  0000 C CNN
	2    6400 2900
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 531F7DFF
P 5400 3250
F 0 "#PWR?" H 5400 3250 40  0001 C CNN
F 1 "DGND" H 5400 3180 40  0000 C CNN
F 2 "" H 5400 3250 60  0000 C CNN
F 3 "" H 5400 3250 60  0000 C CNN
	1    5400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1400 5400 1400
Wire Wire Line
	5400 1400 5400 3250
Wire Wire Line
	5600 1700 5400 1700
Connection ~ 5400 1700
Wire Wire Line
	5600 2000 5400 2000
Connection ~ 5400 2000
Wire Wire Line
	5600 3100 5400 3100
Connection ~ 5400 3100
Wire Wire Line
	5400 2800 5600 2800
Connection ~ 5400 2800
Wire Wire Line
	5600 2500 5400 2500
Connection ~ 5400 2500
$Comp
L DGND #PWR?
U 1 1 531F7E4E
P 2050 3200
F 0 "#PWR?" H 2050 3200 40  0001 C CNN
F 1 "DGND" H 2050 3130 40  0000 C CNN
F 2 "" H 2050 3200 60  0000 C CNN
F 3 "" H 2050 3200 60  0000 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1400 2050 1400
Wire Wire Line
	2050 1400 2050 3200
Wire Wire Line
	2250 3100 2050 3100
Connection ~ 2050 3100
Wire Wire Line
	2250 2800 2050 2800
Connection ~ 2050 2800
Wire Wire Line
	2250 2500 2050 2500
Connection ~ 2050 2500
Wire Wire Line
	2250 1700 2050 1700
Connection ~ 2050 1700
Wire Wire Line
	2250 2000 2050 2000
Connection ~ 2050 2000
$EndSCHEMATC
