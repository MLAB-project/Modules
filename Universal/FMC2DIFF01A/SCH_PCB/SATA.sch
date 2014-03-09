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
LIBS:sata7-67491-1030
LIBS:FMC2DIFF-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
U 1 1 531CBC4F
P 2200 2500
F 0 "#PWR?" H 2200 2500 40  0001 C CNN
F 1 "DGND" H 2200 2430 40  0000 C CNN
F 2 "" H 2200 2500 60  0000 C CNN
F 3 "" H 2200 2500 60  0000 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1750 2200 1750
Wire Wire Line
	2200 1750 2200 2500
Wire Wire Line
	2300 2050 2200 2050
Connection ~ 2200 2050
Wire Wire Line
	2300 2350 2200 2350
Connection ~ 2200 2350
Text GLabel 1900 1950 0    55   BiDi ~ 0
GBTCLK0_M2C_P
Text GLabel 1900 1850 0    55   BiDi ~ 0
GBTCLK0_M2C_N
Wire Wire Line
	1900 1850 2050 1850
Wire Wire Line
	1900 1950 2050 1950
Wire Wire Line
	2300 1850 2150 1850
Wire Wire Line
	2300 1950 2150 1950
Wire Wire Line
	2150 1850 2050 1950
Wire Wire Line
	2150 1950 2050 1850
Text GLabel 1900 2250 0    55   BiDi ~ 0
LA01_N_CC
Text GLabel 1900 2150 0    55   BiDi ~ 0
LA01_P_CC
Wire Wire Line
	1900 2150 2050 2150
Wire Wire Line
	1900 2250 2050 2250
Wire Wire Line
	2050 2250 2150 2150
Wire Wire Line
	2050 2150 2150 2250
Wire Wire Line
	2150 2150 2300 2150
Wire Wire Line
	2150 2250 2300 2250
$Comp
L SATA7-67491-1030 J?
U 1 1 531CCCDB
P 2500 2050
F 0 "J?" H 2400 2450 50  0000 L BNN
F 1 "SATA7-67491-1030" H 2400 1600 50  0000 L BNN
F 2 "MOLEX_67491-1030" H 2500 2200 50  0001 C CNN
F 3 "" H 2500 2050 60  0000 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
