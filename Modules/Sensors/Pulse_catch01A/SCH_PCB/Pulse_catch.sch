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
LIBS:MLAB_HEADER
LIBS:MLAB_MECHANICAL
LIBS:Pulse_catch-cache
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
L 2N7002 Q1
U 1 1 577813BC
P 4150 4450
F 0 "Q1" H 4341 4496 50  0000 L CNN
F 1 "2N7002" H 3850 4650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4350 4375 50  0001 L CIN
F 3 "" H 4150 4450 50  0000 L CNN
	1    4150 4450
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 577814E7
P 3150 4100
F 0 "R1" V 2943 4100 50  0000 C CNN
F 1 "10k" V 3034 4100 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3080 4100 50  0001 C CNN
F 3 "" H 3150 4100 50  0000 C CNN
	1    3150 4100
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 57781557
P 3400 4400
F 0 "C2" H 3515 4446 50  0000 L CNN
F 1 "100nF" H 3515 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3438 4250 50  0001 C CNN
F 3 "" H 3400 4400 50  0000 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57781623
P 4550 4800
F 0 "R2" H 4620 4846 50  0000 L CNN
F 1 "10M" H 4620 4755 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" V 4480 4800 50  0001 C CNN
F 3 "" H 4550 4800 50  0000 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR01
U 1 1 577816F6
P 4050 4750
F 0 "#PWR01" H 4050 4500 50  0001 C CNN
F 1 "GNDA" H 4055 4577 50  0000 C CNN
F 2 "" H 4050 4750 50  0000 C CNN
F 3 "" H 4050 4750 50  0000 C CNN
	1    4050 4750
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR02
U 1 1 57781718
P 4550 5050
F 0 "#PWR02" H 4550 4800 50  0001 C CNN
F 1 "GNDA" H 4555 4877 50  0000 C CNN
F 2 "" H 4550 5050 50  0000 C CNN
F 3 "" H 4550 5050 50  0000 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR03
U 1 1 57781723
P 3400 4750
F 0 "#PWR03" H 3400 4500 50  0001 C CNN
F 1 "GNDA" H 3405 4577 50  0000 C CNN
F 2 "" H 3400 4750 50  0000 C CNN
F 3 "" H 3400 4750 50  0000 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
$Comp
L BNC P1
U 1 1 57781DCC
P 1700 3900
F 0 "P1" H 1801 3876 50  0000 L CNN
F 1 "SMA" H 1801 3785 50  0000 L CNN
F 2 "Mlab_Con:SMA6251A13G50" H 1700 3900 50  0001 C CNN
F 3 "" H 1700 3900 50  0000 C CNN
	1    1700 3900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 57781F41
P 1500 3700
F 0 "#PWR04" H 1500 3550 50  0001 C CNN
F 1 "VDD" H 1517 3873 50  0000 C CNN
F 2 "" H 1500 3700 50  0000 C CNN
F 3 "" H 1500 3700 50  0000 C CNN
	1    1500 3700
	1    0    0    -1  
$EndComp
$Comp
L MCP6002 U1
U 1 1 57781FDF
P 5900 3650
F 0 "U1" H 5900 3900 50  0000 L CNN
F 1 "MCP6002" H 5950 3450 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 5800 3700 50  0001 C CNN
F 3 "" H 5900 3800 50  0000 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
$Comp
L MCP6002 U1
U 2 1 57782107
P 7950 3550
F 0 "U1" H 8291 3596 50  0000 L CNN
F 1 "MCP6002" H 8291 3505 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 7850 3600 50  0001 C CNN
F 3 "" H 7950 3700 50  0000 C CNN
	2    7950 3550
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR05
U 1 1 57782257
P 5800 4100
F 0 "#PWR05" H 5800 3850 50  0001 C CNN
F 1 "GNDA" H 5805 3927 50  0000 C CNN
F 2 "" H 5800 4100 50  0000 C CNN
F 3 "" H 5800 4100 50  0000 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR06
U 1 1 57782272
P 5800 3300
F 0 "#PWR06" H 5800 3150 50  0001 C CNN
F 1 "VDD" H 5817 3473 50  0000 C CNN
F 2 "" H 5800 3300 50  0000 C CNN
F 3 "" H 5800 3300 50  0000 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5778251C
P 7150 2600
F 0 "R3" H 7220 2646 50  0000 L CNN
F 1 "10M" H 7220 2555 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" V 7080 2600 50  0001 C CNN
F 3 "" H 7150 2600 50  0000 C CNN
	1    7150 2600
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 577827EE
P 7150 3000
F 0 "R4" H 7220 3046 50  0000 L CNN
F 1 "1M" H 7220 2955 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" V 7080 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0000 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR07
U 1 1 5778281A
P 7150 2400
F 0 "#PWR07" H 7150 2250 50  0001 C CNN
F 1 "VDD" H 7167 2573 50  0000 C CNN
F 2 "" H 7150 2400 50  0000 C CNN
F 3 "" H 7150 2400 50  0000 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4500 4550 4650
Connection ~ 4550 4500
Wire Wire Line
	3300 4100 4050 4100
Wire Wire Line
	3400 4100 3400 4250
Wire Wire Line
	4050 3550 4050 4250
Connection ~ 3400 4100
Wire Wire Line
	4050 4650 4050 4750
Wire Wire Line
	3400 4550 3400 4750
Wire Wire Line
	1700 4100 3000 4100
Wire Wire Line
	4550 4950 4550 5050
Wire Wire Line
	1500 3700 1500 3900
Wire Wire Line
	1500 3900 1550 3900
Wire Wire Line
	5800 3300 5800 3350
Wire Wire Line
	5800 3950 5800 4100
Wire Wire Line
	4050 3550 5600 3550
Connection ~ 4050 4100
Wire Wire Line
	5600 3750 5500 3750
Wire Wire Line
	5500 3750 5500 4050
Wire Wire Line
	5500 4050 6350 4050
Wire Wire Line
	6350 4050 6350 2600
Wire Wire Line
	6200 3650 7650 3650
$Comp
L GNDA #PWR08
U 1 1 57782A26
P 7150 3250
F 0 "#PWR08" H 7150 3000 50  0001 C CNN
F 1 "GNDA" H 7155 3077 50  0000 C CNN
F 2 "" H 7150 3250 50  0000 C CNN
F 3 "" H 7150 3250 50  0000 C CNN
	1    7150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3250 7150 3150
Wire Wire Line
	7150 2750 7150 2850
Wire Wire Line
	7150 2450 7150 2400
Wire Wire Line
	7150 2800 7500 2800
Wire Wire Line
	7500 2800 7500 3450
Wire Wire Line
	7500 3450 7650 3450
Connection ~ 7150 2800
Connection ~ 6350 3650
$Comp
L GNDA #PWR09
U 1 1 57782BDF
P 7850 4000
F 0 "#PWR09" H 7850 3750 50  0001 C CNN
F 1 "GNDA" H 7855 3827 50  0000 C CNN
F 2 "" H 7850 4000 50  0000 C CNN
F 3 "" H 7850 4000 50  0000 C CNN
	1    7850 4000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR010
U 1 1 57782BEE
P 7850 3100
F 0 "#PWR010" H 7850 2950 50  0001 C CNN
F 1 "VDD" H 7867 3273 50  0000 C CNN
F 2 "" H 7850 3100 50  0000 C CNN
F 3 "" H 7850 3100 50  0000 C CNN
	1    7850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3100 7850 3250
Wire Wire Line
	7850 3850 7850 4000
$Comp
L HEADER_2x03_PARALLEL J1
U 1 1 57782EBA
P 1250 1300
F 0 "J1" H 1169 963 60  0000 C CNN
F 1 "HEADER_2x03_PARALLEL" H 1169 1069 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 1250 1400 60  0001 C CNN
F 3 "" H 1250 1400 60  0000 C CNN
	1    1250 1300
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky D1
U 1 1 57783090
P 2050 1550
F 0 "D1" V 2004 1629 50  0000 L CNN
F 1 "D_Schottky" V 2095 1629 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Standard" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0000 C CNN
	1    2050 1550
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR011
U 1 1 577832BF
P 1650 1650
F 0 "#PWR011" H 1650 1400 50  0001 C CNN
F 1 "GNDA" H 1655 1477 50  0000 C CNN
F 2 "" H 1650 1650 50  0000 C CNN
F 3 "" H 1650 1650 50  0000 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1200 1650 1650
Wire Wire Line
	1500 1400 1650 1400
Wire Wire Line
	1650 1200 1500 1200
Wire Wire Line
	1500 1300 2850 1300
Wire Wire Line
	2050 1300 2050 1400
Connection ~ 1650 1400
$Comp
L GNDA #PWR012
U 1 1 5778342E
P 2050 1700
F 0 "#PWR012" H 2050 1450 50  0001 C CNN
F 1 "GNDA" H 2055 1527 50  0000 C CNN
F 2 "" H 2050 1700 50  0000 C CNN
F 3 "" H 2050 1700 50  0000 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 57783505
P 2850 1100
F 0 "#PWR013" H 2850 950 50  0001 C CNN
F 1 "VDD" H 2867 1273 50  0000 C CNN
F 2 "" H 2850 1100 50  0000 C CNN
F 3 "" H 2850 1100 50  0000 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1100 2850 1400
Connection ~ 2050 1300
$Comp
L C C1
U 1 1 57783558
P 2850 1550
F 0 "C1" H 2965 1596 50  0000 L CNN
F 1 "100nF" H 2965 1505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2888 1400 50  0001 C CNN
F 3 "" H 2850 1550 50  0000 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Connection ~ 2850 1300
$Comp
L GNDA #PWR014
U 1 1 57783621
P 2850 1700
F 0 "#PWR014" H 2850 1450 50  0001 C CNN
F 1 "GNDA" H 2855 1527 50  0000 C CNN
F 2 "" H 2850 1700 50  0000 C CNN
F 3 "" H 2850 1700 50  0000 C CNN
	1    2850 1700
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J4
U 1 1 57783AA0
P 9250 3550
F 0 "J4" H 9168 3797 60  0000 C CNN
F 1 "INT_OUT" H 9168 3691 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 9250 3550 60  0001 C CNN
F 3 "" H 9250 3550 60  0000 C CNN
	1    9250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3550 8250 3550
$Comp
L HEADER_2x01_PARALLEL J2
U 1 1 57783BEA
P 6350 2350
F 0 "J2" V 6322 2272 60  0000 R CNN
F 1 "INTENSITY" V 6216 2272 60  0000 R CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6350 2350 60  0001 C CNN
F 3 "" H 6350 2350 60  0000 C CNN
	1    6350 2350
	0    -1   -1   0   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J3
U 1 1 57783C9C
P 6800 4500
F 0 "J3" H 6718 4747 60  0000 C CNN
F 1 "RESET" H 6718 4641 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6800 4500 60  0001 C CNN
F 3 "" H 6800 4500 60  0000 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4500 6550 4500
$Comp
L HOLE M1
U 1 1 57784508
P 1400 6150
F 0 "M1" H 1418 6364 60  0000 C CNN
F 1 "HOLE" H 1418 6258 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1400 6150 60  0001 C CNN
F 3 "" H 1400 6150 60  0000 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR015
U 1 1 577846D2
P 1550 6250
F 0 "#PWR015" H 1550 6000 50  0001 C CNN
F 1 "GNDA" H 1555 6077 50  0000 C CNN
F 2 "" H 1550 6250 50  0000 C CNN
F 3 "" H 1550 6250 50  0000 C CNN
	1    1550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6150 1550 6150
Wire Wire Line
	1550 6150 1550 6250
$Comp
L HOLE M3
U 1 1 57784742
P 1800 6150
F 0 "M3" H 1818 6364 60  0000 C CNN
F 1 "HOLE" H 1818 6258 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1800 6150 60  0001 C CNN
F 3 "" H 1800 6150 60  0000 C CNN
	1    1800 6150
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR016
U 1 1 57784748
P 1950 6250
F 0 "#PWR016" H 1950 6000 50  0001 C CNN
F 1 "GNDA" H 1955 6077 50  0000 C CNN
F 2 "" H 1950 6250 50  0000 C CNN
F 3 "" H 1950 6250 50  0000 C CNN
	1    1950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6150 1950 6150
Wire Wire Line
	1950 6150 1950 6250
$Comp
L HOLE M2
U 1 1 57784821
P 1400 6800
F 0 "M2" H 1418 7014 60  0000 C CNN
F 1 "HOLE" H 1418 6908 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1400 6800 60  0001 C CNN
F 3 "" H 1400 6800 60  0000 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR017
U 1 1 57784827
P 1550 6900
F 0 "#PWR017" H 1550 6650 50  0001 C CNN
F 1 "GNDA" H 1555 6727 50  0000 C CNN
F 2 "" H 1550 6900 50  0000 C CNN
F 3 "" H 1550 6900 50  0000 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6800 1550 6800
Wire Wire Line
	1550 6800 1550 6900
$Comp
L HOLE M4
U 1 1 5778482F
P 1800 6800
F 0 "M4" H 1818 7014 60  0000 C CNN
F 1 "HOLE" H 1818 6908 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1800 6800 60  0001 C CNN
F 3 "" H 1800 6800 60  0000 C CNN
	1    1800 6800
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR018
U 1 1 57784835
P 1950 6900
F 0 "#PWR018" H 1950 6650 50  0001 C CNN
F 1 "GNDA" H 1955 6727 50  0000 C CNN
F 2 "" H 1950 6900 50  0000 C CNN
F 3 "" H 1950 6900 50  0000 C CNN
	1    1950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 1950 6800
Wire Wire Line
	1950 6800 1950 6900
$EndSCHEMATC
