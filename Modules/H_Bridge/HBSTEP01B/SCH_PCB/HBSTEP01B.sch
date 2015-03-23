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
LIBS:HBSTEP01B-cache
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
L L6470 U1
U 1 1 54FD7068
P 5550 3650
F 0 "U1" H 5500 3900 60  0000 C CNN
F 1 "L6470" H 5600 3700 60  0000 C CNN
F 2 "" H 5750 3600 60  0000 C CNN
F 3 "" H 5750 3600 60  0000 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J10
U 1 1 54FDAB66
P 4100 3550
F 0 "J10" H 3750 3750 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 3700 40  0001 C CNN
F 2 "" H 4100 3550 60  0000 C CNN
F 3 "" H 4100 3550 60  0000 C CNN
	1    4100 3550
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J11
U 1 1 54FDABDB
P 4100 3650
F 0 "J11" H 3750 3850 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 3800 40  0001 C CNN
F 2 "" H 4100 3650 60  0000 C CNN
F 3 "" H 4100 3650 60  0000 C CNN
	1    4100 3650
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J12
U 1 1 54FDAC45
P 4100 3750
F 0 "J12" H 3750 3950 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 3900 40  0001 C CNN
F 2 "" H 4100 3750 60  0000 C CNN
F 3 "" H 4100 3750 60  0000 C CNN
	1    4100 3750
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J13
U 1 1 54FDAC61
P 4100 3850
F 0 "J13" H 3750 4050 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 4000 40  0001 C CNN
F 2 "" H 4100 3850 60  0000 C CNN
F 3 "" H 4100 3850 60  0000 C CNN
	1    4100 3850
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J14
U 1 1 54FDAF49
P 4100 4000
F 0 "J14" H 3750 4200 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 4150 40  0001 C CNN
F 2 "" H 4100 4000 60  0000 C CNN
F 3 "" H 4100 4000 60  0000 C CNN
	1    4100 4000
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J15
U 1 1 54FDB17D
P 4100 4100
F 0 "J15" H 3750 4300 50  0000 C CNN
F 1 "JUMP_2x1" V 4100 4250 40  0001 C CNN
F 2 "" H 4100 4100 60  0000 C CNN
F 3 "" H 4100 4100 60  0000 C CNN
	1    4100 4100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 54FDB574
P 4600 4650
F 0 "#PWR01" H 4600 4400 60  0001 C CNN
F 1 "GND" H 4600 4500 60  0000 C CNN
F 2 "" H 4600 4650 60  0000 C CNN
F 3 "" H 4600 4650 60  0000 C CNN
	1    4600 4650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 54FDBD20
P 3700 2400
F 0 "#PWR02" H 3700 2250 60  0001 C CNN
F 1 "VDD" H 3700 2550 60  0000 C CNN
F 2 "" H 3700 2400 60  0000 C CNN
F 3 "" H 3700 2400 60  0000 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR03
U 1 1 54FDBD46
P 7250 2150
F 0 "#PWR03" H 7250 2000 60  0001 C CNN
F 1 "VSS" H 7250 2300 60  0000 C CNN
F 2 "" H 7250 2150 60  0000 C CNN
F 3 "" H 7250 2150 60  0000 C CNN
	1    7250 2150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54FDBDB4
P 3700 2750
F 0 "R2" V 3780 2750 40  0000 C CNN
F 1 "1k" V 3707 2751 40  0000 C CNN
F 2 "" V 3630 2750 30  0000 C CNN
F 3 "" H 3700 2750 30  0000 C CNN
	1    3700 2750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54FDBE23
P 3900 2750
F 0 "R3" V 3980 2750 40  0000 C CNN
F 1 "1k" V 3907 2751 40  0000 C CNN
F 2 "" V 3830 2750 30  0000 C CNN
F 3 "" H 3900 2750 30  0000 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 54FDBE6E
P 3900 2400
F 0 "#PWR04" H 3900 2250 60  0001 C CNN
F 1 "VDD" H 3900 2550 60  0000 C CNN
F 2 "" H 3900 2400 60  0000 C CNN
F 3 "" H 3900 2400 60  0000 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J9
U 1 1 54FDBED1
P 3050 3300
F 0 "J9" H 2700 3500 50  0000 C CNN
F 1 "JUMP_2x1" V 3050 3450 40  0001 C CNN
F 2 "" H 3050 3300 60  0000 C CNN
F 3 "" H 3050 3300 60  0000 C CNN
	1    3050 3300
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J8
U 1 1 54FDBF27
P 3050 3200
F 0 "J8" H 2700 3400 50  0000 C CNN
F 1 "JUMP_2x1" V 3050 3350 40  0001 C CNN
F 2 "" H 3050 3200 60  0000 C CNN
F 3 "" H 3050 3200 60  0000 C CNN
	1    3050 3200
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J7
U 1 1 54FDBF48
P 3050 3100
F 0 "J7" H 2700 3300 50  0000 C CNN
F 1 "JUMP_2x1" V 3050 3250 40  0001 C CNN
F 2 "" H 3050 3100 60  0000 C CNN
F 3 "" H 3050 3100 60  0000 C CNN
	1    3050 3100
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J6
U 1 1 54FDBF7A
P 3050 3000
F 0 "J6" H 2700 3200 50  0000 C CNN
F 1 "JUMP_2x1" V 3050 3150 40  0001 C CNN
F 2 "" H 3050 3000 60  0000 C CNN
F 3 "" H 3050 3000 60  0000 C CNN
	1    3050 3000
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR05
U 1 1 54FDC6B1
P 1400 5100
F 0 "#PWR05" H 1400 4950 60  0001 C CNN
F 1 "VDD" H 1400 5250 60  0000 C CNN
F 2 "" H 1400 5100 60  0000 C CNN
F 3 "" H 1400 5100 60  0000 C CNN
	1    1400 5100
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J1
U 1 1 54FDC78E
P 700 5050
F 0 "J1" H 350 5250 50  0000 C CNN
F 1 "JUMP_2x1" V 700 5200 40  0001 C CNN
F 2 "" H 700 5050 60  0000 C CNN
F 3 "" H 700 5050 60  0000 C CNN
	1    700  5050
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J2
U 1 1 54FDC8C2
P 700 5200
F 0 "J2" H 350 5400 50  0000 C CNN
F 1 "JUMP_2x1" V 700 5350 40  0001 C CNN
F 2 "" H 700 5200 60  0000 C CNN
F 3 "" H 700 5200 60  0000 C CNN
	1    700  5200
	-1   0    0    1   
$EndComp
$Comp
L JUMP_2x1 J3
U 1 1 54FDC8F1
P 700 5350
F 0 "J3" H 350 5550 50  0000 C CNN
F 1 "JUMP_2x1" V 700 5500 40  0001 C CNN
F 2 "" H 700 5350 60  0000 C CNN
F 3 "" H 700 5350 60  0000 C CNN
	1    700  5350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 54FDCA61
P 1200 5800
F 0 "#PWR06" H 1200 5550 60  0001 C CNN
F 1 "GND" H 1200 5650 60  0000 C CNN
F 2 "" H 1200 5800 60  0000 C CNN
F 3 "" H 1200 5800 60  0000 C CNN
	1    1200 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J16
U 1 1 54FDCF19
P 4150 4400
F 0 "J16" H 4200 4450 50  0000 C CNN
F 1 "CONN1_1" H 4250 4350 40  0001 C CNN
F 2 "" H 4200 4350 60  0000 C CNN
F 3 "" H 4200 4350 60  0000 C CNN
	1    4150 4400
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J17
U 1 1 54FDCF8F
P 4150 4500
F 0 "J17" H 4200 4550 50  0000 C CNN
F 1 "CONN1_1" H 4250 4450 40  0001 C CNN
F 2 "" H 4200 4450 60  0000 C CNN
F 3 "" H 4200 4450 60  0000 C CNN
	1    4150 4500
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J19
U 1 1 54FDD037
P 4600 2500
F 0 "J19" H 4650 2550 50  0000 C CNN
F 1 "CONN1_1" H 4700 2450 40  0001 C CNN
F 2 "" H 4650 2450 60  0000 C CNN
F 3 "" H 4650 2450 60  0000 C CNN
	1    4600 2500
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J18
U 1 1 54FDD3FB
P 4600 2400
F 0 "J18" H 4650 2450 50  0000 C CNN
F 1 "CONN1_1" H 4700 2350 40  0001 C CNN
F 2 "" H 4650 2350 60  0000 C CNN
F 3 "" H 4650 2350 60  0000 C CNN
	1    4600 2400
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR07
U 1 1 54FDD4CE
P 4900 2350
F 0 "#PWR07" H 4900 2200 60  0001 C CNN
F 1 "VDD" H 4900 2500 60  0000 C CNN
F 2 "" H 4900 2350 60  0000 C CNN
F 3 "" H 4900 2350 60  0000 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 54FDD829
P 5350 2350
F 0 "#PWR08" H 5350 2200 60  0001 C CNN
F 1 "VDD" H 5350 2500 60  0000 C CNN
F 2 "" H 5350 2350 60  0000 C CNN
F 3 "" H 5350 2350 60  0000 C CNN
	1    5350 2350
	1    0    0    -1  
$EndComp
$Comp
L BAT46SW D3
U 1 1 54FDDE4A
P 6800 1750
F 0 "D3" H 7600 1700 40  0000 C CNN
F 1 "BAT46SW" H 7850 1500 40  0000 C CNN
F 2 "" H 7600 1600 60  0000 C CNN
F 3 "" H 7600 1600 60  0000 C CNN
	1    6800 1750
	-1   0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 54FDE141
P 5900 2350
F 0 "C11" H 5900 2450 40  0000 L CNN
F 1 "10nF" H 5906 2265 40  0000 L CNN
F 2 "" H 5938 2200 30  0000 C CNN
F 3 "" H 5900 2350 60  0000 C CNN
	1    5900 2350
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 54FDE2A9
P 5900 1600
F 0 "C10" H 5900 1700 40  0000 L CNN
F 1 "220nF" H 5906 1515 40  0000 L CNN
F 2 "" H 5938 1450 30  0000 C CNN
F 3 "" H 5900 1600 60  0000 C CNN
	1    5900 1600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54FDEE48
P 7800 3450
F 0 "R5" V 7880 3450 40  0000 C CNN
F 1 "1k" V 7807 3451 40  0000 C CNN
F 2 "" V 7730 3450 30  0000 C CNN
F 3 "" H 7800 3450 30  0000 C CNN
	1    7800 3450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54FDEEAE
P 7800 2850
F 0 "R4" V 7880 2850 40  0000 C CNN
F 1 "68k" V 7807 2851 40  0000 C CNN
F 2 "" V 7730 2850 30  0000 C CNN
F 3 "" H 7800 2850 30  0000 C CNN
	1    7800 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 54FDFB9C
P 7450 3600
F 0 "#PWR09" H 7450 3350 60  0001 C CNN
F 1 "GND" H 7450 3450 60  0000 C CNN
F 2 "" H 7450 3600 60  0000 C CNN
F 3 "" H 7450 3600 60  0000 C CNN
	1    7450 3600
	1    0    0    -1  
$EndComp
$Comp
L ZENER D4
U 1 1 54FE00B9
P 7200 3350
F 0 "D4" H 7200 3450 50  0000 C CNN
F 1 "BZV55C-3,6V" H 7150 3250 40  0000 C CNN
F 2 "" H 7200 3350 60  0000 C CNN
F 3 "" H 7200 3350 60  0000 C CNN
	1    7200 3350
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 54FE0214
P 7450 3350
F 0 "C12" H 7450 3450 40  0000 L CNN
F 1 "10nF" H 7456 3265 40  0000 L CNN
F 2 "" H 7488 3200 30  0000 C CNN
F 3 "" H 7450 3350 60  0000 C CNN
	1    7450 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54FE0757
P 7200 3600
F 0 "#PWR010" H 7200 3350 60  0001 C CNN
F 1 "GND" H 7200 3450 60  0000 C CNN
F 2 "" H 7200 3600 60  0000 C CNN
F 3 "" H 7200 3600 60  0000 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J24
U 1 1 54FE0A7D
P 7500 2800
F 0 "J24" H 7550 2850 50  0000 C CNN
F 1 "CONN1_1" H 7600 2750 40  0001 C CNN
F 2 "" H 7550 2750 60  0000 C CNN
F 3 "" H 7550 2750 60  0000 C CNN
	1    7500 2800
	0    -1   -1   0   
$EndComp
$Comp
L CONN1_1 J25
U 1 1 54FE0EEB
P 7600 2800
F 0 "J25" H 7650 2850 50  0000 C CNN
F 1 "CONN1_1" H 7700 2750 40  0001 C CNN
F 2 "" H 7650 2750 60  0000 C CNN
F 3 "" H 7650 2750 60  0000 C CNN
	1    7600 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 54FE151F
P 7800 3750
F 0 "#PWR011" H 7800 3500 60  0001 C CNN
F 1 "GND" H 7800 3600 60  0000 C CNN
F 2 "" H 7800 3750 60  0000 C CNN
F 3 "" H 7800 3750 60  0000 C CNN
	1    7800 3750
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 54FE26EC
P 3500 3700
F 0 "C7" H 3500 3800 40  0000 L CNN
F 1 "100pF" H 3506 3615 40  0000 L CNN
F 2 "" H 3538 3550 30  0000 C CNN
F 3 "" H 3500 3700 60  0000 C CNN
	1    3500 3700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54FE33DA
P 3500 2750
F 0 "R1" V 3580 2750 40  0000 C CNN
F 1 "1k" V 3507 2751 40  0000 C CNN
F 2 "" V 3430 2750 30  0000 C CNN
F 3 "" H 3500 2750 30  0000 C CNN
	1    3500 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54FE3846
P 3500 3950
F 0 "#PWR012" H 3500 3700 60  0001 C CNN
F 1 "GND" H 3500 3800 60  0000 C CNN
F 2 "" H 3500 3950 60  0000 C CNN
F 3 "" H 3500 3950 60  0000 C CNN
	1    3500 3950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 54FE3A8B
P 3500 2400
F 0 "#PWR013" H 3500 2250 60  0001 C CNN
F 1 "VDD" H 3500 2550 60  0000 C CNN
F 2 "" H 3500 2400 60  0000 C CNN
F 3 "" H 3500 2400 60  0000 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 54FE4730
P 5600 4850
F 0 "#PWR014" H 5600 4600 60  0001 C CNN
F 1 "GND" H 5600 4700 60  0000 C CNN
F 2 "" H 5600 4850 60  0000 C CNN
F 3 "" H 5600 4850 60  0000 C CNN
	1    5600 4850
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 54FE514B
P 1400 5550
F 0 "D2" H 1400 5650 40  0000 C CNN
F 1 "M4" H 1400 5450 40  0000 C CNN
F 2 "" H 1400 5550 60  0000 C CNN
F 3 "" H 1400 5550 60  0000 C CNN
	1    1400 5550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 54FE5782
P 1400 5800
F 0 "#PWR015" H 1400 5550 60  0001 C CNN
F 1 "GND" H 1400 5650 60  0000 C CNN
F 2 "" H 1400 5800 60  0000 C CNN
F 3 "" H 1400 5800 60  0000 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J4
U 1 1 54FE5CB5
P 800 6550
F 0 "J4" H 850 6600 50  0000 C CNN
F 1 "CONN1_1" H 900 6500 40  0001 C CNN
F 2 "" H 850 6500 60  0000 C CNN
F 3 "" H 850 6500 60  0000 C CNN
	1    800  6550
	-1   0    0    1   
$EndComp
$Comp
L CONN1_1 J5
U 1 1 54FE60F5
P 800 6950
F 0 "J5" H 850 7000 50  0000 C CNN
F 1 "CONN1_1" H 900 6900 40  0001 C CNN
F 2 "" H 850 6900 60  0000 C CNN
F 3 "" H 850 6900 60  0000 C CNN
	1    800  6950
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 54FE621C
P 1300 6800
F 0 "D1" H 1300 6900 40  0000 C CNN
F 1 "M4" H 1300 6700 40  0000 C CNN
F 2 "" H 1300 6800 60  0000 C CNN
F 3 "" H 1300 6800 60  0000 C CNN
	1    1300 6800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 54FE6453
P 1200 7100
F 0 "#PWR016" H 1200 6850 60  0001 C CNN
F 1 "GND" H 1200 6950 60  0000 C CNN
F 2 "" H 1200 7100 60  0000 C CNN
F 3 "" H 1200 7100 60  0000 C CNN
	1    1200 7100
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR017
U 1 1 54FE6695
P 1300 6500
F 0 "#PWR017" H 1300 6350 60  0001 C CNN
F 1 "VSS" H 1300 6650 60  0000 C CNN
F 2 "" H 1300 6500 60  0000 C CNN
F 3 "" H 1300 6500 60  0000 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 54FE6F5F
P 1800 5450
F 0 "C2" H 1800 5550 40  0000 L CNN
F 1 "100nF" H 1806 5365 40  0000 L CNN
F 2 "" H 1838 5300 30  0000 C CNN
F 3 "" H 1800 5450 60  0000 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
$Comp
L CP2 C4
U 1 1 54FE7080
P 2050 5450
F 0 "C4" H 2050 5550 40  0000 L CNN
F 1 "10uF" H 2056 5365 40  0000 L CNN
F 2 "" H 2088 5300 30  0000 C CNN
F 3 "" H 2050 5450 60  0000 C CNN
	1    2050 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 54FE70D9
P 1800 5700
F 0 "#PWR018" H 1800 5450 60  0001 C CNN
F 1 "GND" H 1800 5550 60  0000 C CNN
F 2 "" H 1800 5700 60  0000 C CNN
F 3 "" H 1800 5700 60  0000 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 54FE710C
P 2050 5700
F 0 "#PWR019" H 2050 5450 60  0001 C CNN
F 1 "GND" H 2050 5550 60  0000 C CNN
F 2 "" H 2050 5700 60  0000 C CNN
F 3 "" H 2050 5700 60  0000 C CNN
	1    2050 5700
	1    0    0    -1  
$EndComp
$Comp
L CP2 C6
U 1 1 54FE73F0
P 2600 6800
F 0 "C6" H 2600 6900 40  0000 L CNN
F 1 "22-47uF/20V" H 2606 6715 40  0000 L CNN
F 2 "" H 2638 6650 30  0000 C CNN
F 3 "" H 2600 6800 60  0000 C CNN
	1    2600 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 54FE73F6
P 1750 7050
F 0 "#PWR020" H 1750 6800 60  0001 C CNN
F 1 "GND" H 1750 6900 60  0000 C CNN
F 2 "" H 1750 7050 60  0000 C CNN
F 3 "" H 1750 7050 60  0000 C CNN
	1    1750 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 54FE73FC
P 2600 7050
F 0 "#PWR021" H 2600 6800 60  0001 C CNN
F 1 "GND" H 2600 6900 60  0000 C CNN
F 2 "" H 2600 7050 60  0000 C CNN
F 3 "" H 2600 7050 60  0000 C CNN
	1    2600 7050
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR022
U 1 1 54FE74BC
P 1750 6550
F 0 "#PWR022" H 1750 6400 60  0001 C CNN
F 1 "VSS" H 1750 6700 60  0000 C CNN
F 2 "" H 1750 6550 60  0000 C CNN
F 3 "" H 1750 6550 60  0000 C CNN
	1    1750 6550
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR023
U 1 1 54FE7641
P 2600 6550
F 0 "#PWR023" H 2600 6400 60  0001 C CNN
F 1 "VSS" H 2600 6700 60  0000 C CNN
F 2 "" H 2600 6550 60  0000 C CNN
F 3 "" H 2600 6550 60  0000 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR024
U 1 1 54FE79E1
P 1800 5150
F 0 "#PWR024" H 1800 5000 60  0001 C CNN
F 1 "VDD" H 1800 5300 60  0000 C CNN
F 2 "" H 1800 5150 60  0000 C CNN
F 3 "" H 1800 5150 60  0000 C CNN
	1    1800 5150
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR025
U 1 1 54FE7A16
P 2050 5150
F 0 "#PWR025" H 2050 5000 60  0001 C CNN
F 1 "VDD" H 2050 5300 60  0000 C CNN
F 2 "" H 2050 5150 60  0000 C CNN
F 3 "" H 2050 5150 60  0000 C CNN
	1    2050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5250 1800 5150
Wire Wire Line
	2050 5250 2050 5150
Wire Wire Line
	1750 6600 1750 6550
Wire Wire Line
	2600 6600 2600 6550
Wire Wire Line
	2600 7050 2600 7000
Wire Wire Line
	1750 7050 1750 7000
Wire Wire Line
	2050 5700 2050 5650
Wire Wire Line
	1800 5700 1800 5650
Connection ~ 1300 6600
Wire Wire Line
	1300 6600 1300 6500
Connection ~ 1200 7000
Wire Wire Line
	1200 7100 1200 7000
Wire Wire Line
	1100 7000 1300 7000
Wire Wire Line
	1100 6600 1300 6600
Wire Wire Line
	1400 5800 1400 5750
Connection ~ 1400 5350
Wire Wire Line
	1400 5350 1400 5100
Wire Wire Line
	1100 5350 1400 5350
Connection ~ 5500 4850
Wire Wire Line
	5500 4750 5500 4850
Connection ~ 5600 4850
Wire Wire Line
	5900 4850 5900 4750
Wire Wire Line
	5300 4850 5900 4850
Wire Wire Line
	5300 4750 5300 4850
Wire Wire Line
	3500 2500 3500 2400
Wire Wire Line
	3500 3950 3500 3900
Connection ~ 3500 3450
Wire Wire Line
	3500 3000 3500 3500
Wire Wire Line
	4500 3700 4600 3700
Wire Wire Line
	4500 3800 4600 3800
Wire Wire Line
	4500 3900 4600 3900
Wire Wire Line
	4500 4000 4600 4000
Wire Wire Line
	4500 4150 4600 4150
Wire Wire Line
	4500 4250 4600 4250
Wire Wire Line
	4450 4450 4600 4450
Wire Wire Line
	7250 2300 7250 2150
Wire Wire Line
	7800 2300 7800 2600
Wire Wire Line
	7800 3750 7800 3700
Connection ~ 7800 3150
Wire Wire Line
	7800 3100 7800 3200
Wire Wire Line
	7550 3150 7800 3150
Wire Wire Line
	7550 3100 7550 3150
Wire Wire Line
	7450 3150 7450 3100
Wire Wire Line
	7450 3600 7450 3550
Wire Wire Line
	7200 3600 7200 3550
Wire Wire Line
	6600 3150 7450 3150
Connection ~ 7250 2300
Connection ~ 6300 2300
Wire Wire Line
	6300 2600 6300 2300
Connection ~ 6200 2300
Wire Wire Line
	6200 2300 7800 2300
Wire Wire Line
	5900 2600 5900 2550
Connection ~ 6200 1900
Wire Wire Line
	6100 1600 6200 1600
Connection ~ 5550 1900
Wire Wire Line
	5550 1600 5700 1600
Wire Wire Line
	5900 2150 5900 2050
Wire Wire Line
	6200 1600 6200 2600
Wire Wire Line
	5550 1900 5600 1900
Wire Wire Line
	5550 1600 5550 2600
Wire Wire Line
	5350 2600 5350 2350
Wire Wire Line
	4900 2450 4900 2350
Wire Wire Line
	4900 2550 4900 2600
Connection ~ 1200 5500
Wire Wire Line
	1100 5500 1200 5500
Wire Wire Line
	1200 5200 1200 5800
Wire Wire Line
	1100 5200 1200 5200
Wire Wire Line
	3900 2500 3900 2400
Wire Wire Line
	3700 2500 3700 2400
Wire Wire Line
	3900 3000 3900 3500
Wire Wire Line
	3700 3000 3700 3500
Wire Wire Line
	3450 3450 4600 3450
Wire Wire Line
	3450 3350 4600 3350
Wire Wire Line
	3450 3250 4600 3250
Wire Wire Line
	3450 3150 4600 3150
Wire Wire Line
	4600 4550 4600 4650
Wire Wire Line
	4450 4550 4600 4550
$Comp
L C C1
U 1 1 54FE9673
P 1750 6800
F 0 "C1" H 1750 6900 40  0000 L CNN
F 1 "100nF" H 1756 6715 40  0000 L CNN
F 2 "" H 1788 6650 30  0000 C CNN
F 3 "" H 1750 6800 60  0000 C CNN
	1    1750 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 54FEA928
P 2000 7050
F 0 "#PWR026" H 2000 6800 60  0001 C CNN
F 1 "GND" H 2000 6900 60  0000 C CNN
F 2 "" H 2000 7050 60  0000 C CNN
F 3 "" H 2000 7050 60  0000 C CNN
	1    2000 7050
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR027
U 1 1 54FEA92E
P 2000 6550
F 0 "#PWR027" H 2000 6400 60  0001 C CNN
F 1 "VSS" H 2000 6700 60  0000 C CNN
F 2 "" H 2000 6550 60  0000 C CNN
F 3 "" H 2000 6550 60  0000 C CNN
	1    2000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6600 2000 6550
Wire Wire Line
	2000 7050 2000 7000
$Comp
L C C3
U 1 1 54FEA936
P 2000 6800
F 0 "C3" H 2000 6900 40  0000 L CNN
F 1 "100nF" H 2006 6715 40  0000 L CNN
F 2 "" H 2038 6650 30  0000 C CNN
F 3 "" H 2000 6800 60  0000 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 54FEA9A9
P 2250 7050
F 0 "#PWR028" H 2250 6800 60  0001 C CNN
F 1 "GND" H 2250 6900 60  0000 C CNN
F 2 "" H 2250 7050 60  0000 C CNN
F 3 "" H 2250 7050 60  0000 C CNN
	1    2250 7050
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR029
U 1 1 54FEA9AF
P 2250 6550
F 0 "#PWR029" H 2250 6400 60  0001 C CNN
F 1 "VSS" H 2250 6700 60  0000 C CNN
F 2 "" H 2250 6550 60  0000 C CNN
F 3 "" H 2250 6550 60  0000 C CNN
	1    2250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6600 2250 6550
Wire Wire Line
	2250 7050 2250 7000
$Comp
L C C5
U 1 1 54FEA9B7
P 2250 6800
F 0 "C5" H 2250 6900 40  0000 L CNN
F 1 "100nF" H 2256 6715 40  0000 L CNN
F 2 "" H 2288 6650 30  0000 C CNN
F 3 "" H 2250 6800 60  0000 C CNN
	1    2250 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J21
U 1 1 54FEB7D5
P 6950 3650
F 0 "J21" H 7000 3700 50  0000 C CNN
F 1 "CONN1_1" H 6850 3750 40  0001 C CNN
F 2 "" H 7000 3600 60  0000 C CNN
F 3 "" H 7000 3600 60  0000 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J22
U 1 1 54FEB81F
P 6950 4050
F 0 "J22" H 7000 4100 50  0000 C CNN
F 1 "CONN1_1" H 7050 4000 40  0001 C CNN
F 2 "" H 7000 4000 60  0000 C CNN
F 3 "" H 7000 4000 60  0000 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J23
U 1 1 54FEB86E
P 6950 4200
F 0 "J23" H 7000 4250 50  0000 C CNN
F 1 "CONN1_1" H 7050 4150 40  0001 C CNN
F 2 "" H 7000 4150 60  0000 C CNN
F 3 "" H 7000 4150 60  0000 C CNN
	1    6950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3600 6650 3600
Wire Wire Line
	6600 4000 6650 4000
Wire Wire Line
	6600 4150 6650 4150
$Comp
L CONN1_1 J20
U 1 1 54FEB2A2
P 6950 3500
F 0 "J20" H 7000 3550 50  0000 C CNN
F 1 "CONN1_1" H 6850 3300 40  0001 C CNN
F 2 "" H 7000 3450 60  0000 C CNN
F 3 "" H 7000 3450 60  0000 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
$Comp
L sroub P1
U 1 1 54FEDAA9
P 9650 650
F 0 "P1" H 9700 750 50  0000 C CNN
F 1 "sroub" H 9650 700 40  0001 C CNN
F 2 "" H 9900 500 60  0000 C CNN
F 3 "" H 9900 500 60  0000 C CNN
	1    9650 650 
	-1   0    0    1   
$EndComp
$Comp
L sroub P2
U 1 1 54FEDE67
P 9650 850
F 0 "P2" H 9700 950 50  0000 C CNN
F 1 "sroub" H 9650 900 40  0001 C CNN
F 2 "" H 9900 700 60  0000 C CNN
F 3 "" H 9900 700 60  0000 C CNN
	1    9650 850 
	-1   0    0    1   
$EndComp
$Comp
L sroub P3
U 1 1 54FEDEB9
P 10250 650
F 0 "P3" H 10300 750 50  0000 C CNN
F 1 "sroub" H 10250 700 40  0001 C CNN
F 2 "" H 10500 500 60  0000 C CNN
F 3 "" H 10500 500 60  0000 C CNN
	1    10250 650 
	-1   0    0    1   
$EndComp
$Comp
L sroub P4
U 1 1 54FEDF36
P 10250 850
F 0 "P4" H 10300 950 50  0000 C CNN
F 1 "sroub" H 10250 900 40  0001 C CNN
F 2 "" H 10500 700 60  0000 C CNN
F 3 "" H 10500 700 60  0000 C CNN
	1    10250 850 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR030
U 1 1 54FEE2CA
P 10000 1000
F 0 "#PWR030" H 10000 750 60  0001 C CNN
F 1 "GND" H 10000 850 60  0000 C CNN
F 2 "" H 10000 1000 60  0000 C CNN
F 3 "" H 10000 1000 60  0000 C CNN
	1    10000 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 54FEE649
P 10600 1000
F 0 "#PWR031" H 10600 750 60  0001 C CNN
F 1 "GND" H 10600 850 60  0000 C CNN
F 2 "" H 10600 1000 60  0000 C CNN
F 3 "" H 10600 1000 60  0000 C CNN
	1    10600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 900  10000 900 
Wire Wire Line
	10000 700  10000 1000
Wire Wire Line
	10000 700  9950 700 
Connection ~ 10000 900 
Wire Wire Line
	10600 700  10600 1000
Wire Wire Line
	10600 900  10550 900 
Wire Wire Line
	10600 700  10550 700 
Connection ~ 10600 900 
Connection ~ 3700 3150
Connection ~ 3900 3250
$Comp
L C C8
U 1 1 54FF4ED6
P 3700 3700
F 0 "C8" H 3700 3800 40  0000 L CNN
F 1 "100pF" H 3706 3615 40  0000 L CNN
F 2 "" H 3738 3550 30  0000 C CNN
F 3 "" H 3700 3700 60  0000 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 54FF4F27
P 3900 3700
F 0 "C9" H 3900 3800 40  0000 L CNN
F 1 "100pF" H 3906 3615 40  0000 L CNN
F 2 "" H 3938 3550 30  0000 C CNN
F 3 "" H 3900 3700 60  0000 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 54FF5567
P 3700 3950
F 0 "#PWR032" H 3700 3700 60  0001 C CNN
F 1 "GND" H 3700 3800 60  0000 C CNN
F 2 "" H 3700 3950 60  0000 C CNN
F 3 "" H 3700 3950 60  0000 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 54FF55A8
P 3900 3950
F 0 "#PWR033" H 3900 3700 60  0001 C CNN
F 1 "GND" H 3900 3800 60  0000 C CNN
F 2 "" H 3900 3950 60  0000 C CNN
F 3 "" H 3900 3950 60  0000 C CNN
	1    3900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3950 3700 3900
Wire Wire Line
	3900 3950 3900 3900
Wire Wire Line
	6600 3450 6650 3450
Connection ~ 7200 3150
Connection ~ 7450 3150
$EndSCHEMATC
