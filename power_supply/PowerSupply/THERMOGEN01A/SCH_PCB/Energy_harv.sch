EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microcontrollers
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:ADC-DAC
LIBS:asp-134604-01_(fmc)
LIBS:clock
LIBS:header
LIBS:Jumpers
LIBS:konektory
LIBS:mechanical
LIBS:MLAB_BATERY
LIBS:MLAB_CONNECTORS
LIBS:MLAB_D
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_T
LIBS:OpAmp
LIBS:sata7-67491-1030
LIBS:Energy_harv-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NAME"
Date "%d. %m. %Y"
Rev "REV"
Comp "Mlab www.mlab.cz"
Comment1 "Short description \\nTwo lines are maximum"
Comment2 "nickname <email@example.com>"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C2
U 1 1 55A639B3
P 4650 2300
F 0 "C2" V 4590 2390 50  0000 L CNN
F 1 "1nF" V 4500 2240 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4688 2150 30  0001 C CNN
F 3 "" H 4650 2300 60  0000 C CNN
	1    4650 2300
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 55A63C47
P 4650 2550
F 0 "C3" V 4590 2640 50  0000 L CNN
F 1 "470pF" V 4790 2440 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4688 2400 30  0001 C CNN
F 3 "" H 4650 2550 60  0000 C CNN
	1    4650 2550
	0    1    1    0   
$EndComp
$Comp
L Step-Up_TRANSFO T1
U 1 1 55A64E73
P 3680 2350
F 0 "T1" H 3680 2600 50  0000 C CNN
F 1 "WE 74488540070" H 3670 2090 50  0000 C CNN
F 2 "Energy_harv:Step-Up_TRANSF" H 3680 2350 60  0001 C CNN
F 3 "" H 3680 2350 60  0000 C CNN
	1    3680 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55A64EF4
P 4220 2570
F 0 "#PWR01" H 4220 2320 50  0001 C CNN
F 1 "GND" H 4220 2420 50  0000 C CNN
F 2 "" H 4220 2570 60  0000 C CNN
F 3 "" H 4220 2570 60  0000 C CNN
	1    4220 2570
	1    0    0    -1  
$EndComp
$Comp
L Step-Up_TRANSFO T2
U 1 1 55A650B1
P 3680 3210
F 0 "T2" H 3680 3460 50  0000 C CNN
F 1 "WE 74488540070" H 3680 2940 50  0000 C CNN
F 2 "Energy_harv:Step-Up_TRANSF" H 3680 3210 60  0001 C CNN
F 3 "" H 3680 3210 60  0000 C CNN
	1    3680 3210
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55A6512C
P 4650 3100
F 0 "C4" V 4590 3190 50  0000 L CNN
F 1 "1nF" V 4510 3040 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4688 2950 30  0001 C CNN
F 3 "" H 4650 3100 60  0000 C CNN
	1    4650 3100
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 55A65213
P 4650 3350
F 0 "C5" V 4590 3440 50  0000 L CNN
F 1 "470pF" V 4800 3260 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4688 3200 30  0001 C CNN
F 3 "" H 4650 3350 60  0000 C CNN
	1    4650 3350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 55A655D8
P 4220 3430
F 0 "#PWR02" H 4220 3180 50  0001 C CNN
F 1 "GND" H 4220 3280 50  0000 C CNN
F 2 "" H 4220 3430 60  0000 C CNN
F 3 "" H 4220 3430 60  0000 C CNN
	1    4220 3430
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55A65C0C
P 2830 2470
F 0 "C1" H 2855 2570 50  0000 L CNN
F 1 "47uF" H 2855 2370 50  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 2868 2320 30  0001 C CNN
F 3 "" H 2830 2470 60  0000 C CNN
	1    2830 2470
	1    0    0    -1  
$EndComp
$Comp
L THERM_GEN U1
U 1 1 55A669FE
P 2560 2500
F 0 "U1" H 2580 2370 60  0000 C CNN
F 1 "THERM_GEN" H 2560 2660 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 2450 2590 60  0001 C CNN
F 3 "" H 2450 2590 60  0000 C CNN
	1    2560 2500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 55A66EB3
P 5600 4370
F 0 "#PWR03" H 5600 4120 50  0001 C CNN
F 1 "GND" H 5600 4220 50  0000 C CNN
F 2 "" H 5600 4370 60  0000 C CNN
F 3 "" H 5600 4370 60  0000 C CNN
	1    5600 4370
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 55A66F52
P 6400 4350
F 0 "#PWR04" H 6400 4100 50  0001 C CNN
F 1 "GND" H 6400 4200 50  0000 C CNN
F 2 "" H 6400 4350 60  0000 C CNN
F 3 "" H 6400 4350 60  0000 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 55A66F73
P 6400 4150
F 0 "C6" H 6425 4250 50  0000 L CNN
F 1 "1uF" H 6425 4050 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 6438 4000 30  0001 C CNN
F 3 "" H 6400 4150 60  0000 C CNN
	1    6400 4150
	1    0    0    -1  
$EndComp
$Comp
L CP C9
U 1 1 55A671D6
P 6800 3980
F 0 "C9" H 6825 4080 50  0000 L CNN
F 1 "1-10F" H 6820 3900 50  0000 L CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 6838 3830 30  0001 C CNN
F 3 "" H 6800 3980 60  0000 C CNN
	1    6800 3980
	1    0    0    -1  
$EndComp
$Comp
L CP C8
U 1 1 55A6722B
P 7350 2750
F 0 "C8" H 7375 2850 50  0000 L CNN
F 1 "470uF" H 7375 2650 50  0000 L CNN
F 2 "Mlab_C:TantalC_SizeD_Reflow" H 7388 2600 30  0001 C CNN
F 3 "" H 7350 2750 60  0000 C CNN
	1    7350 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55A677B9
P 6800 4170
F 0 "#PWR05" H 6800 3920 50  0001 C CNN
F 1 "GND" H 6800 4020 50  0000 C CNN
F 2 "" H 6800 4170 60  0000 C CNN
F 3 "" H 6800 4170 60  0000 C CNN
	1    6800 4170
	1    0    0    -1  
$EndComp
$Comp
L LTC3109GN U2
U 1 1 55A67D56
P 5600 3100
F 0 "U2" H 5850 2050 60  0000 C CNN
F 1 "LTC3109GN" H 5600 4050 60  0000 C CNN
F 2 "SMD_Packages:SSOP-20" H 5600 3850 60  0001 C CNN
F 3 "" H 5600 3850 60  0000 C CNN
	1    5600 3100
	1    0    0    -1  
$EndComp
$Comp
L HEADER_1x03 J2
U 1 1 55BA9377
P 4400 4250
F 0 "J2" H 4400 4050 60  0000 C CNN
F 1 "JUMP1X3" H 4400 4500 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x03" H 4400 4350 60  0001 C CNN
F 3 "" H 4400 4350 60  0000 C CNN
	1    4400 4250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 55BA9586
P 4050 4400
F 0 "#PWR06" H 4050 4150 50  0001 C CNN
F 1 "GND" H 4050 4250 50  0000 C CNN
F 2 "" H 4050 4400 60  0000 C CNN
F 3 "" H 4050 4400 60  0000 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55BA959C
P 4700 4400
F 0 "#PWR07" H 4700 4150 50  0001 C CNN
F 1 "GND" H 4700 4250 50  0000 C CNN
F 2 "" H 4700 4400 60  0000 C CNN
F 3 "" H 4700 4400 60  0000 C CNN
	1    4700 4400
	1    0    0    -1  
$EndComp
Text Label 6250 3800 0    60   ~ 0
VAUX
Text Label 3950 4150 0    60   ~ 0
VAUX
Text Label 4600 4150 0    60   ~ 0
VAUX
$Comp
L C C7
U 1 1 55A6727D
P 6950 3000
F 0 "C7" H 6975 3100 50  0000 L CNN
F 1 "2,2uF" H 6975 2900 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 6988 2850 30  0001 C CNN
F 3 "" H 6950 3000 60  0000 C CNN
	1    6950 3000
	-1   0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J4
U 1 1 55BA9CD4
P 6800 2300
F 0 "J4" H 6800 2200 60  0000 C CNN
F 1 "JUMP1X2" H 6800 2100 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 6800 2300 60  0001 C CNN
F 3 "" H 6800 2300 60  0000 C CNN
	1    6800 2300
	1    0    0    1   
$EndComp
$Comp
L HEADER_2x03_PARALLEL J5
U 1 1 55BA9E0C
P 8300 2350
F 0 "J5" H 8300 2150 60  0000 C CNN
F 1 "JUMP2X3" H 8550 2350 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 8300 2450 60  0001 C CNN
F 3 "" H 8300 2450 60  0000 C CNN
	1    8300 2350
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x03_PARALLEL J6
U 1 1 55BA9EE7
P 8300 2800
F 0 "J6" H 8300 2600 60  0000 C CNN
F 1 "JUMP2X3" H 8550 2750 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 8300 2900 60  0001 C CNN
F 3 "" H 8300 2900 60  0000 C CNN
	1    8300 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 55BA9FFB
P 7950 3000
F 0 "#PWR08" H 7950 2750 50  0001 C CNN
F 1 "GND" H 7950 2850 50  0000 C CNN
F 2 "" H 7950 3000 60  0000 C CNN
F 3 "" H 7950 3000 60  0000 C CNN
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 55BAA013
P 6950 3200
F 0 "#PWR09" H 6950 2950 50  0001 C CNN
F 1 "GND" H 6950 3050 50  0000 C CNN
F 2 "" H 6950 3200 60  0000 C CNN
F 3 "" H 6950 3200 60  0000 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 55BAA491
P 7350 2950
F 0 "#PWR010" H 7350 2700 50  0001 C CNN
F 1 "GND" H 7350 2800 50  0000 C CNN
F 2 "" H 7350 2950 60  0000 C CNN
F 3 "" H 7350 2950 60  0000 C CNN
	1    7350 2950
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J3
U 1 1 55BAAB6B
P 6520 2960
F 0 "J3" H 6520 2860 60  0000 C CNN
F 1 "JUMP1X2" H 6520 2760 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 6520 2960 60  0001 C CNN
F 3 "" H 6520 2960 60  0000 C CNN
	1    6520 2960
	1    0    0    1   
$EndComp
$Comp
L HOLE M1
U 1 1 55CA76BA
P 1050 6150
F 0 "M1" H 1050 6250 60  0000 C CNN
F 1 "HOLE" H 1050 6050 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1050 6150 60  0001 C CNN
F 3 "" H 1050 6150 60  0000 C CNN
	1    1050 6150
	1    0    0    -1  
$EndComp
$Comp
L HOLE M2
U 1 1 55CA779F
P 1050 6500
F 0 "M2" H 1050 6600 60  0000 C CNN
F 1 "HOLE" H 1050 6400 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1050 6500 60  0001 C CNN
F 3 "" H 1050 6500 60  0000 C CNN
	1    1050 6500
	1    0    0    -1  
$EndComp
$Comp
L HOLE M3
U 1 1 55CA77E6
P 1400 6150
F 0 "M3" H 1400 6250 60  0000 C CNN
F 1 "HOLE" H 1400 6050 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1400 6150 60  0001 C CNN
F 3 "" H 1400 6150 60  0000 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L HOLE M4
U 1 1 55CA77EC
P 1400 6500
F 0 "M4" H 1400 6600 60  0000 C CNN
F 1 "HOLE" H 1400 6400 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 1400 6500 60  0001 C CNN
F 3 "" H 1400 6500 60  0000 C CNN
	1    1400 6500
	1    0    0    -1  
$EndComp
NoConn ~ 1100 6150
NoConn ~ 1100 6500
NoConn ~ 1450 6500
NoConn ~ 1450 6150
NoConn ~ 3500 1250
$Comp
L HEADER_1x03 J1
U 1 1 55BA9255
P 3750 4250
F 0 "J1" H 3750 4050 60  0000 C CNN
F 1 "JUMP1X3" H 3900 4250 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x03" H 3750 4350 60  0001 C CNN
F 3 "" H 3750 4350 60  0000 C CNN
	1    3750 4250
	-1   0    0    1   
$EndComp
$Comp
L _ P1
U 1 1 55DAEB67
P 1890 2100
F 0 "P1" H 1940 2200 50  0000 C CNN
F 1 "WAGO256" H 1890 2150 40  0001 C CNN
F 2 "Mlab_Con:WAGO256" H 2140 1950 60  0001 C CNN
F 3 "" H 2140 1950 60  0000 C CNN
	1    1890 2100
	-1   0    0    1   
$EndComp
$Comp
L _ P2
U 1 1 55DB0223
P 1900 2850
F 0 "P2" H 1950 2950 50  0000 C CNN
F 1 "WAGO256" H 1900 2900 40  0001 C CNN
F 2 "Mlab_Con:WAGO256" H 2150 2700 60  0001 C CNN
F 3 "" H 2150 2700 60  0000 C CNN
	1    1900 2850
	-1   0    0    1   
$EndComp
Text Label 2190 2150 0    60   ~ 0
T+
Text Label 2200 2900 0    60   ~ 0
T-
$Comp
L _ P4
U 1 1 55DB1192
P 7290 3650
F 0 "P4" H 7340 3750 50  0000 C CNN
F 1 "WAGO256" H 7290 3700 40  0001 C CNN
F 2 "Mlab_Con:WAGO256" H 7540 3500 60  0001 C CNN
F 3 "" H 7540 3500 60  0000 C CNN
	1    7290 3650
	1    0    0    -1  
$EndComp
$Comp
L _ P3
U 1 1 55DB1560
P 7270 4220
F 0 "P3" H 7320 4320 50  0000 C CNN
F 1 "WAGO256" H 7270 4270 40  0001 C CNN
F 2 "Mlab_Con:WAGO256" H 7520 4070 60  0001 C CNN
F 3 "" H 7520 4070 60  0000 C CNN
	1    7270 4220
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2300 5000 2300
Wire Wire Line
	4800 2550 5000 2550
Wire Wire Line
	4360 2550 4500 2550
Wire Wire Line
	4360 2150 4360 2550
Connection ~ 4360 2300
Wire Wire Line
	4360 2300 4500 2300
Wire Wire Line
	4080 2150 4360 2150
Wire Wire Line
	3120 2550 3120 2800
Wire Wire Line
	3120 2800 5000 2800
Wire Wire Line
	4800 3100 5000 3100
Wire Wire Line
	4800 3350 5000 3350
Wire Wire Line
	4360 3100 4500 3100
Wire Wire Line
	4360 3010 4360 3350
Wire Wire Line
	4360 3350 4500 3350
Wire Wire Line
	3120 2550 3280 2550
Connection ~ 4360 3100
Wire Wire Line
	4080 3410 4220 3410
Wire Wire Line
	4220 3410 4220 3430
Wire Wire Line
	4080 2550 4220 2550
Wire Wire Line
	4220 2550 4220 2570
Wire Wire Line
	4080 3010 4360 3010
Wire Wire Line
	2830 2150 2830 2320
Wire Wire Line
	2200 2900 5000 2900
Wire Wire Line
	2830 2620 2830 3010
Connection ~ 2830 2900
Wire Wire Line
	2830 3010 3280 3010
Wire Wire Line
	2660 2220 2660 2150
Connection ~ 2830 2150
Wire Wire Line
	2660 2780 2660 2900
Wire Wire Line
	5000 3700 3130 3700
Wire Wire Line
	3130 3700 3130 3410
Wire Wire Line
	3130 3410 3280 3410
Connection ~ 2660 2150
Wire Wire Line
	2320 2150 2320 3800
Wire Wire Line
	2320 3800 5000 3800
Wire Wire Line
	5600 4300 5600 4370
Wire Wire Line
	6800 3600 6800 3830
Wire Wire Line
	6800 4130 6800 4170
Wire Wire Line
	6400 4300 6400 4350
Wire Wire Line
	5500 4300 5500 4350
Wire Wire Line
	5500 4350 5700 4350
Connection ~ 5600 4350
Wire Wire Line
	5700 4350 5700 4300
Wire Wire Line
	6400 3800 6200 3800
Wire Wire Line
	6400 4000 6400 3800
Wire Wire Line
	6200 3600 6990 3600
Wire Wire Line
	5000 3900 4200 3900
Wire Wire Line
	4200 3900 4200 4250
Wire Wire Line
	4200 4250 3950 4250
Wire Wire Line
	5000 4000 4850 4000
Wire Wire Line
	4850 4000 4850 4250
Wire Wire Line
	4850 4250 4600 4250
Wire Wire Line
	4700 4400 4700 4350
Wire Wire Line
	4700 4350 4600 4350
Wire Wire Line
	4050 4400 4050 4350
Wire Wire Line
	4050 4350 3950 4350
Wire Wire Line
	4600 4150 4800 4150
Wire Wire Line
	3950 4150 4100 4150
Wire Wire Line
	6200 2800 6950 2800
Wire Wire Line
	6950 2800 6950 2850
Wire Wire Line
	6950 3150 6950 3200
Wire Wire Line
	6200 2550 7700 2550
Wire Wire Line
	7350 2550 7350 2600
Wire Wire Line
	7350 2900 7350 2950
Wire Wire Line
	7700 2550 7700 2800
Wire Wire Line
	7700 2800 8050 2800
Wire Wire Line
	8050 2250 7950 2250
Wire Wire Line
	7950 2250 7950 3000
Wire Wire Line
	8050 2450 7950 2450
Connection ~ 7950 2450
Wire Wire Line
	8050 2900 7950 2900
Connection ~ 7950 2900
Wire Wire Line
	8050 2700 7950 2700
Connection ~ 7950 2700
Wire Wire Line
	6200 2400 7700 2400
Wire Wire Line
	7700 2400 7700 2350
Wire Wire Line
	7700 2350 8050 2350
Connection ~ 7350 2550
Wire Wire Line
	6270 3100 6200 3100
Wire Wire Line
	6200 2300 6550 2300
Wire Wire Line
	2190 2150 3280 2150
Connection ~ 2320 2150
Connection ~ 2660 2900
Wire Wire Line
	6800 4170 6970 4170
Connection ~ 6800 4170
Connection ~ 6800 3600
Text Label 6970 3600 0    60   ~ 0
C+
Text Label 6960 4170 0    60   ~ 0
C-
Text Label 7340 2400 0    60   ~ 0
V_OUT2
Text Label 7380 2550 0    60   ~ 0
V_OUT
$Comp
L CP C10
U 1 1 55DC02A5
P 7110 2760
F 0 "C10" H 7135 2860 50  0000 L CNN
F 1 "47uF" H 7135 2660 50  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 7148 2610 30  0001 C CNN
F 3 "" H 7110 2760 60  0000 C CNN
	1    7110 2760
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55DC034D
P 7110 2950
F 0 "#PWR011" H 7110 2700 50  0001 C CNN
F 1 "GND" H 7110 2800 50  0000 C CNN
F 2 "" H 7110 2950 60  0000 C CNN
F 3 "" H 7110 2950 60  0000 C CNN
	1    7110 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7110 2950 7110 2910
Wire Wire Line
	7110 2610 7110 2400
Connection ~ 7110 2400
Text Label 6210 2300 0    60   ~ 0
PGOOD
Text Label 6270 3100 0    60   ~ 0
VOUT2_EN
Wire Wire Line
	6270 2960 6270 3100
Text Notes 8540 2200 3    60   ~ 0
V_out2
Text Notes 8530 2920 1    60   ~ 0
V_out
Text Label 3950 4250 0    60   ~ 0
VS1
Text Label 4600 4250 0    60   ~ 0
VS2
$EndSCHEMATC
