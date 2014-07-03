EESchema Schematic File Version 1
LIBS:power,Avr32AK,device,transistors,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./AK_km.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 3 4
Title "Connectors"
Date "30 nov 2009"
Rev "V1.0"
Comp "Weyr Associates"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6000 5300
Wire Wire Line
	6000 5000 6000 5300
Connection ~ 2850 1250
Wire Wire Line
	2850 850  2850 1250
Connection ~ 6400 5300
Wire Wire Line
	5500 5300 6650 5300
Wire Wire Line
	6650 4200 4200 4200
Connection ~ 2100 1250
Wire Wire Line
	3300 1250 1500 1250
Wire Wire Line
	6650 5400 5500 5400
Wire Wire Line
	1950 1350 1950 1000
Wire Wire Line
	2250 1150 2250 1000
Wire Wire Line
	6650 4600 4200 4600
Wire Wire Line
	6650 4400 4200 4400
Wire Wire Line
	6650 4000 4200 4000
Connection ~ 5250 3050
Wire Wire Line
	6500 3050 4350 3050
Connection ~ 5750 2850
Wire Wire Line
	6500 2850 4350 2850
Connection ~ 5750 1550
Wire Wire Line
	5750 1750 5750 1550
Connection ~ 5600 1550
Wire Wire Line
	6250 1750 6250 1550
Wire Wire Line
	6250 1550 5000 1550
Connection ~ 5250 1550
Wire Wire Line
	5250 1750 5250 1550
Connection ~ 7500 3150
Wire Wire Line
	7300 3150 7500 3150
Connection ~ 7500 2950
Wire Wire Line
	7300 2950 7500 2950
Connection ~ 7500 2750
Wire Wire Line
	7300 2750 7500 2750
Wire Wire Line
	5000 3150 5000 2250
Wire Wire Line
	5500 2950 5500 2250
Wire Wire Line
	6000 2750 6000 2250
Connection ~ 6250 2650
Wire Wire Line
	6250 2650 6250 2250
Wire Wire Line
	6500 2650 4350 2650
Wire Wire Line
	5750 2250 5750 2850
Wire Wire Line
	5250 2250 5250 3050
Wire Wire Line
	7300 2650 7500 2650
Wire Wire Line
	7500 2650 7500 3450
Wire Wire Line
	7500 2850 7300 2850
Connection ~ 7500 2850
Wire Wire Line
	7500 3050 7300 3050
Connection ~ 7500 3050
Wire Wire Line
	5000 1550 5000 1750
Wire Wire Line
	5600 1550 5600 1450
Wire Wire Line
	5500 1550 5500 1750
Connection ~ 5500 1550
Wire Wire Line
	6000 1550 6000 1750
Connection ~ 6000 1550
Wire Wire Line
	6500 2750 4350 2750
Connection ~ 6000 2750
Wire Wire Line
	6500 2950 4350 2950
Connection ~ 5500 2950
Wire Wire Line
	6500 3150 4350 3150
Connection ~ 5000 3150
Wire Wire Line
	6650 4100 4200 4100
Wire Wire Line
	6650 4300 4200 4300
Wire Wire Line
	6650 4500 4200 4500
Wire Wire Line
	6650 4700 4200 4700
Wire Wire Line
	2100 1600 2100 1250
Wire Wire Line
	6650 5200 5500 5200
Wire Wire Line
	3300 1150 1500 1150
Connection ~ 2250 1150
Wire Wire Line
	3300 1350 1500 1350
Connection ~ 1950 1350
Wire Wire Line
	6400 5600 6400 5300
Wire Wire Line
	3100 850  3100 1150
Connection ~ 3100 1150
Wire Wire Line
	2550 850  2550 1350
Connection ~ 2550 1350
$Comp
L PWR_FLAG #FLG015
U 1 1 4B132C2E
P 6000 5000
F 0 "#FLG015" H 6000 5270 30  0001 C C
F 1 "PWR_FLAG" H 6000 5230 30  0000 C C
	1    6000 5000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 4B132C08
P 3100 850
F 0 "#FLG016" H 3100 1120 30  0001 C C
F 1 "PWR_FLAG" H 3100 1080 30  0000 C C
	1    3100 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG017
U 1 1 4B132C03
P 2850 850
F 0 "#FLG017" H 2850 1120 30  0001 C C
F 1 "PWR_FLAG" H 2850 1080 30  0000 C C
	1    2850 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 4B132C00
P 2550 850
F 0 "#FLG018" H 2550 1120 30  0001 C C
F 1 "PWR_FLAG" H 2550 1080 30  0000 C C
	1    2550 850 
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR019
U 1 1 4B1325C6
P 6400 5600
F 0 "#PWR019" H 6400 5600 40  0001 C C
F 1 "GNDA" H 6400 5530 40  0000 C C
	1    6400 5600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 4B13209B
P 5600 1450
F 0 "#PWR020" H 5600 1410 30  0001 C C
F 1 "+3.3V" H 5600 1560 30  0000 C C
	1    5600 1450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 4B132067
P 1950 1000
F 0 "#PWR021" H 1950 960 30  0001 C C
F 1 "+3.3V" H 1950 1110 30  0000 C C
	1    1950 1000
	1    0    0    -1  
$EndComp
Text GLabel 5500 5300 0    60   BiDi
Analog Ground
Text GLabel 1500 1250 0    60   BiDi
System Ground
Text GLabel 1500 1350 0    60   BiDi
3.3v Power
Text GLabel 1500 1150 0    60   BiDi
5v Power
Text GLabel 5500 5400 0    60   Output
RIN
Text GLabel 5500 5200 0    60   Output
LIN
$Comp
L +5V #PWR022
U 1 1 4B12F4D5
P 2250 1000
F 0 "#PWR022" H 2250 1090 20  0001 C C
F 1 "+5V" H 2250 1090 30  0000 C C
	1    2250 1000
	1    0    0    -1  
$EndComp
Text GLabel 4200 4700 0    60   BiDi
SCLK
Text GLabel 4200 4600 0    60   BiDi
LRCK
Text GLabel 4200 4500 0    60   Output
RSTN
Text GLabel 4200 4400 0    60   Input
CAL
Text GLabel 4200 4300 0    60   Output
ZCAL
Text GLabel 4200 4200 0    60   Input
12.288MHz_I
Text GLabel 4200 4100 0    60   BiDi
FSYNC
Text GLabel 4200 4000 0    60   Input
SDTA
Text GLabel 4350 3150 0    60   Output
SMD1
Text GLabel 4350 3050 0    60   Output
SMD2
Text GLabel 4350 2950 0    60   Output
DFS0
Text GLabel 4350 2850 0    60   Output
DFS1
Text GLabel 4350 2750 0    60   Output
HPFE
$Comp
L GND #PWR023
U 1 1 4B12F283
P 2100 1600
F 0 "#PWR023" H 2100 1600 30  0001 C C
F 1 "GND" H 2100 1530 30  0001 C C
	1    2100 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 4B12F275
P 7500 3450
F 0 "#PWR024" H 7500 3450 30  0001 C C
F 1 "GND" H 7500 3380 30  0001 C C
	1    7500 3450
	1    0    0    -1  
$EndComp
Text GLabel 4350 2650 0    60   Output
OSC_Disable
$Comp
L R R101
U 1 1 4B12F104
P 6250 2000
F 0 "R101" V 6330 2000 50  0000 C C
F 1 "10k" V 6250 2000 50  0000 C C
F 2 "SM0805" V 6430 2100 60  0000 C C
	1    6250 2000
	1    0    0    -1  
$EndComp
$Comp
L R R102
U 1 1 4B12F0FB
P 6000 2000
F 0 "R102" V 6080 2000 50  0000 C C
F 1 "10k" V 6000 2000 50  0000 C C
F 2 "SM0805" V 6180 2100 60  0000 C C
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L R R103
U 1 1 4B12F0F7
P 5750 2000
F 0 "R103" V 5830 2000 50  0000 C C
F 1 "10k" V 5750 2000 50  0000 C C
F 2 "SM0805" V 5930 2100 60  0000 C C
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L R R104
U 1 1 4B12F0F5
P 5500 2000
F 0 "R104" V 5580 2000 50  0000 C C
F 1 "10k" V 5500 2000 50  0000 C C
F 2 "SM0805" V 5680 2100 60  0000 C C
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L R R105
U 1 1 4B12F0F0
P 5250 2000
F 0 "R105" V 5330 2000 50  0000 C C
F 1 "10k" V 5250 2000 50  0000 C C
F 2 "SM0805" V 5430 2100 60  0000 C C
	1    5250 2000
	1    0    0    -1  
$EndComp
$Comp
L R R106
U 1 1 4B12F0E3
P 5000 2000
F 0 "R106" V 5080 2000 50  0000 C C
F 1 "10k" V 5000 2000 50  0000 C C
F 2 "SM0805" V 5180 2100 60  0000 C C
	1    5000 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 J101
U 1 1 4B12EEF7
P 7000 5300
F 0 "J101" V 6950 5300 50  0000 C C
F 1 "CONN_3" V 7050 5300 40  0000 C C
F 2 "SIL-3" V 7050 5400 60  0000 C C
	1    7000 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 J102
U 1 1 4B12EEE8
P 3650 1250
F 0 "J102" V 3600 1250 50  0000 C C
F 1 "CONN_3" V 3700 1250 40  0000 C C
F 2 "SIL-3" V 3700 1350 60  0000 C C
	1    3650 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_6X2 JB100
U 1 1 4B12EED7
P 6900 2900
F 0 "JB100" H 6900 3250 60  0000 C C
F 1 "CONN_6X2" V 6900 2900 60  0000 C C
F 2 "PIN_ARRAY_6X2" H 7000 3350 60  0000 C C
	1    6900 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 J100
U 1 1 4B12EEC0
P 7000 4350
F 0 "J100" V 6950 4350 60  0000 C C
F 1 "CONN_8" V 7050 4350 60  0000 C C
F 2 "SIL-8" V 7050 4450 60  0000 C C
	1    7000 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
