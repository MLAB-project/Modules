EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip_dspic33dsc
LIBS:microchip
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:mlab_header
LIBS:mlab_mechanical
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:powerint
LIBS:power
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm32
LIBS:stm8
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:Zilog
LIBS:MLAB_BATERY
LIBS:MLAB_CONNECTORS
LIBS:MLAB_D
LIBS:MLAB_DISPLAY
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_SW
LIBS:MLAB_T
LIBS:MLAB_U
LIBS:MLAB_TR
LIBS:RJ12V01A-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NAME"
Date "%F"
Rev "REV"
Comp "Mlab www.mlab.cz"
Comment1 "VERSION"
Comment2 "Short description \\nTwo lines are maximum"
Comment3 "nickname <email@example.com>"
Comment4 "BSD"
$EndDescr
$Comp
L HOLE M1
U 1 1 549D7549
P 10150 900
F 0 "M1" V 10050 900 60  0000 C CNN
F 1 "HOLE" H 10150 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10150 900 60  0001 C CNN
F 3 "" H 10150 900 60  0000 C CNN
	1    10150 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M2
U 1 1 549D7628
P 10350 900
F 0 "M2" V 10250 900 60  0000 C CNN
F 1 "HOLE" H 10350 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10350 900 60  0001 C CNN
F 3 "" H 10350 900 60  0000 C CNN
	1    10350 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M3
U 1 1 549D7646
P 10550 900
F 0 "M3" V 10450 900 60  0000 C CNN
F 1 "HOLE" H 10550 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10550 900 60  0001 C CNN
F 3 "" H 10550 900 60  0000 C CNN
	1    10550 900 
	0    -1   -1   0   
$EndComp
$Comp
L HOLE M4
U 1 1 549D7665
P 10750 900
F 0 "M4" V 10650 900 60  0000 C CNN
F 1 "HOLE" H 10750 800 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10750 900 60  0001 C CNN
F 3 "" H 10750 900 60  0000 C CNN
	1    10750 900 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 549D770F
P 10950 850
F 0 "#PWR01" H 10950 600 60  0001 C CNN
F 1 "GND" H 10950 700 60  0000 C CNN
F 2 "" H 10950 850 60  0000 C CNN
F 3 "" H 10950 850 60  0000 C CNN
	1    10950 850 
	1    0    0    -1  
$EndComp
Text Notes 10050 1150 0    60   ~ 0
MOUNTING HOLES
$Comp
L C C4
U 1 1 5820C904
P 2650 6650
F 0 "C4" H 2765 6696 50  0000 L CNN
F 1 "10uF" H 2765 6605 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2688 6500 50  0001 C CNN
F 3 "" H 2650 6650 50  0000 C CNN
	1    2650 6650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58231ADB
P 1850 1300
F 0 "R3" V 1950 1300 50  0000 C CNN
F 1 "10k" V 1850 1300 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 1780 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0000 C CNN
	1    1850 1300
	-1   0    0    1   
$EndComp
Wire Notes Line
	10050 1150 10050 750 
Wire Notes Line
	11050 1150 10050 1150
Wire Notes Line
	11050 750  11050 1150
Wire Notes Line
	10050 750  11050 750 
Connection ~ 10750 800 
Wire Wire Line
	10750 850  10750 800 
Connection ~ 10550 800 
Wire Wire Line
	10550 850  10550 800 
Connection ~ 10350 800 
Wire Wire Line
	10350 850  10350 800 
Wire Wire Line
	10150 800  10150 850 
Wire Wire Line
	10950 800  10150 800 
Wire Wire Line
	10950 850  10950 800 
Text Notes 1300 850  0    60   ~ 0
I2C INTERFACE
$Comp
L JUMP_2x1 J1
U 1 1 583C91A7
P 1250 1400
F 0 "J1" H 950 1400 50  0000 C CNN
F 1 "JUMP_2x1" V 1200 1400 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1250 1400 60  0001 C CNN
F 3 "" H 1250 1400 60  0000 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J2
U 1 1 583C966A
P 1250 1500
F 0 "J2" H 950 1500 50  0000 C CNN
F 1 "JUMP_2x1" V 1200 1500 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1250 1500 60  0001 C CNN
F 3 "" H 1250 1500 60  0000 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J3
U 1 1 583C9698
P 1250 1600
F 0 "J3" H 950 1600 50  0000 C CNN
F 1 "JUMP_2x1" V 1200 1600 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1250 1600 60  0001 C CNN
F 3 "" H 1250 1600 60  0000 C CNN
	1    1250 1600
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J4
U 1 1 583C96F5
P 1250 1700
F 0 "J4" H 950 1700 50  0000 C CNN
F 1 "JUMP_2x1" V 1200 1700 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1250 1700 60  0001 C CNN
F 3 "" H 1250 1700 60  0000 C CNN
	1    1250 1700
	1    0    0    -1  
$EndComp
$Comp
L JUMP_2x1 J5
U 1 1 583C9729
P 1250 1800
F 0 "J5" H 950 1800 50  0000 C CNN
F 1 "JUMP_2x1" V 1200 1800 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1250 1800 60  0001 C CNN
F 3 "" H 1250 1800 60  0000 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 1500 1400
Wire Wire Line
	1500 1400 1500 1900
Wire Wire Line
	1400 1800 2300 1800
Connection ~ 1500 1800
$Comp
L GND #PWR02
U 1 1 583C9A5A
P 1500 2600
F 0 "#PWR02" H 1500 2350 50  0001 C CNN
F 1 "GND" H 1505 2427 50  0000 C CNN
F 2 "" H 1500 2600 50  0000 C CNN
F 3 "" H 1500 2600 50  0000 C CNN
	1    1500 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 583CA128
P 1600 1100
F 0 "#PWR03" H 1600 950 50  0001 C CNN
F 1 "VCC" H 1617 1273 50  0000 C CNN
F 2 "" H 1600 1100 50  0000 C CNN
F 3 "" H 1600 1100 50  0000 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1400 1600
Wire Wire Line
	1600 1100 1600 1600
Wire Wire Line
	1400 1500 2500 1500
Wire Wire Line
	1400 1700 2500 1700
Text Label 2300 1500 0    60   ~ 0
SDA
Text Label 2300 1700 0    60   ~ 0
SCL
$Comp
L R R5
U 1 1 583CAEFB
P 2100 1300
F 0 "R5" V 2200 1300 50  0000 C CNN
F 1 "10k" V 2100 1300 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 2030 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0000 C CNN
	1    2100 1300
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR04
U 1 1 583CB0B7
P 1850 1100
F 0 "#PWR04" H 1850 950 50  0001 C CNN
F 1 "VCC" H 1867 1273 50  0000 C CNN
F 2 "" H 1850 1100 50  0000 C CNN
F 3 "" H 1850 1100 50  0000 C CNN
	1    1850 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 583CB0EC
P 2100 1100
F 0 "#PWR05" H 2100 950 50  0001 C CNN
F 1 "VCC" H 2117 1273 50  0000 C CNN
F 2 "" H 2100 1100 50  0000 C CNN
F 3 "" H 2100 1100 50  0000 C CNN
	1    2100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1150 1850 1100
Wire Wire Line
	2100 1150 2100 1100
Wire Wire Line
	1850 1450 1850 1500
Connection ~ 1850 1500
Wire Wire Line
	2100 1450 2100 1700
Connection ~ 2100 1700
$Comp
L VCC #PWR06
U 1 1 583CD007
P 2650 6400
F 0 "#PWR06" H 2650 6250 50  0001 C CNN
F 1 "VCC" H 2667 6573 50  0000 C CNN
F 2 "" H 2650 6400 50  0000 C CNN
F 3 "" H 2650 6400 50  0000 C CNN
	1    2650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6900 2650 6800
Wire Wire Line
	2650 6500 2650 6400
$Comp
L RJ12 J8
U 1 1 585A32FC
P 6350 1850
F 0 "J8" H 6456 2475 50  0000 C CNN
F 1 "RJ12GLP-AMP" H 6456 2384 50  0000 C CNN
F 2 "Mlab_CON:RJ12GLP-AMP(RJ12)" H 6350 1850 50  0001 C CNN
F 3 "" H 6350 1850 50  0000 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2300 6150 2450
Wire Wire Line
	6250 2300 6250 2450
Wire Wire Line
	6350 2300 6350 2450
Wire Wire Line
	6450 2300 6450 2450
Wire Wire Line
	6550 2300 6550 2450
Wire Wire Line
	6650 2300 6650 2450
Text Label 6150 2450 0    60   ~ 0
1
Text Label 6250 2450 0    60   ~ 0
2
Text Label 6350 2450 0    60   ~ 0
3
Text Label 6450 2450 0    60   ~ 0
4
Text Label 6550 2450 0    60   ~ 0
5
Text Label 6650 2450 0    60   ~ 0
6
$Comp
L RJ12 J9
U 1 1 585A63E4
P 7400 1850
F 0 "J9" H 7506 2475 50  0000 C CNN
F 1 "RJ12GLP-AMP" H 7506 2384 50  0000 C CNN
F 2 "Mlab_CON:RJ12GLP-AMP(RJ12)" H 7400 1850 50  0001 C CNN
F 3 "" H 7400 1850 50  0000 C CNN
	1    7400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2300 7200 2450
Wire Wire Line
	7300 2300 7300 2450
Wire Wire Line
	7400 2300 7400 2450
Wire Wire Line
	7500 2300 7500 2450
Wire Wire Line
	7600 2300 7600 2450
Wire Wire Line
	7700 2300 7700 2450
Text Label 7200 2450 0    60   ~ 0
1
Text Label 7300 2450 0    60   ~ 0
2
Text Label 7400 2450 0    60   ~ 0
3
Text Label 7500 2450 0    60   ~ 0
4
Text Label 7600 2450 0    60   ~ 0
5
Text Label 7700 2450 0    60   ~ 0
6
$Comp
L JUMP2_2x1 J7
U 1 1 585A7E98
P 1500 2250
F 0 "J7" V 1475 2309 50  0000 L CNN
F 1 "JUMP2_2x1" H 1700 2150 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 1500 2250 60  0001 C CNN
F 3 "" H 1500 2250 60  0000 C CNN
	1    1500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2600 1500 2550
$Comp
L JUMP_2X2 J6
U 1 1 585AC7AB
P 800 4200
F 0 "J6" H 544 4030 50  0000 C CNN
F 1 "JUMP_2X2" H 544 4114 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x02" H 800 4200 60  0001 C CNN
F 3 "" H 800 4200 60  0000 C CNN
	1    800  4200
	-1   0    0    1   
$EndComp
$Comp
L JUMP2_2x1 J10
U 1 1 585A7E33
P 7700 2850
F 0 "J10" H 7100 2850 50  0000 C CNN
F 1 "JUMP2_2x1" H 7900 2750 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 7700 2850 60  0001 C CNN
F 3 "" H 7700 2850 60  0000 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L JUMP2_2x1 J11
U 1 1 585A7F9D
P 7700 2950
F 0 "J11" H 7100 2950 50  0000 C CNN
F 1 "JUMP2_2x1" H 7900 2850 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 7700 2950 60  0001 C CNN
F 3 "" H 7700 2950 60  0000 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L JUMP2_2x1 J12
U 1 1 585A7FFE
P 7700 3050
F 0 "J12" H 7100 3050 50  0000 C CNN
F 1 "JUMP2_2x1" H 7900 2950 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 7700 3050 60  0001 C CNN
F 3 "" H 7700 3050 60  0000 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L JUMP2_2x1 J13
U 1 1 585A805E
P 7700 3150
F 0 "J13" H 7100 3150 50  0000 C CNN
F 1 "JUMP2_2x1" H 7900 3050 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 7700 3150 60  0001 C CNN
F 3 "" H 7700 3150 60  0000 C CNN
	1    7700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2850 8100 2850
Wire Wire Line
	8000 2950 8100 2950
Wire Wire Line
	8000 3050 8100 3050
Wire Wire Line
	8000 3150 8100 3150
Wire Wire Line
	7350 2850 7250 2850
Wire Wire Line
	7350 2950 7250 2950
Wire Wire Line
	7350 3050 7250 3050
Wire Wire Line
	7350 3150 7250 3150
Text Label 7250 2850 0    60   ~ 0
1
Text Label 7250 2950 0    60   ~ 0
2
Text Label 7250 3050 0    60   ~ 0
3
Text Label 7250 3150 0    60   ~ 0
4
Text Label 8100 2850 0    60   ~ 0
5
Text Label 8100 2950 0    60   ~ 0
6
Text Label 2300 1800 0    60   ~ 0
5
Text Label 1450 1050 0    60   ~ 0
4
Wire Wire Line
	1450 1050 1450 1150
Wire Wire Line
	1450 1150 1600 1150
Connection ~ 1600 1150
Text Label 2500 1500 0    60   ~ 0
2
Text Label 2500 1700 0    60   ~ 0
3
Wire Wire Line
	1200 4250 1300 4250
Wire Wire Line
	1200 4350 1300 4350
Text Label 1300 4250 0    60   ~ 0
1
Text Label 1300 4350 0    60   ~ 0
6
$Comp
L D_4xZENER D2
U 1 1 585BD82D
P 4500 4100
F 0 "D2" H 4878 4096 50  0000 L CNN
F 1 "SP1001-04XTG" H 4878 4005 50  0000 L CNN
F 2 "Mlab_IO:SOT-553" H 4500 4600 60  0001 C CNN
F 3 "" H 4500 4600 60  0000 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
$Comp
L D_4xZENER D3
U 1 1 585BE39B
P 5650 4100
F 0 "D3" H 6028 4096 50  0000 L CNN
F 1 "SP1001-04XTG" H 6028 4005 50  0000 L CNN
F 2 "Mlab_IO:SOT-553" H 5650 4600 60  0001 C CNN
F 3 "" H 5650 4600 60  0000 C CNN
	1    5650 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 585BF2A2
P 4550 4500
F 0 "#PWR07" H 4550 4250 50  0001 C CNN
F 1 "GND" H 4555 4327 50  0000 C CNN
F 2 "" H 4550 4500 50  0000 C CNN
F 3 "" H 4550 4500 50  0000 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 585BF96A
P 5700 4500
F 0 "#PWR08" H 5700 4250 50  0001 C CNN
F 1 "GND" H 5705 4327 50  0000 C CNN
F 2 "" H 5700 4500 50  0000 C CNN
F 3 "" H 5700 4500 50  0000 C CNN
	1    5700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4500 4550 4400
Wire Wire Line
	5700 4500 5700 4400
Wire Wire Line
	4300 3900 4300 3800
Wire Wire Line
	4450 3900 4450 3800
Wire Wire Line
	4600 3900 4600 3800
Wire Wire Line
	4750 3900 4750 3800
Wire Wire Line
	5450 3900 5450 3800
Wire Wire Line
	5600 3900 5600 3800
Wire Wire Line
	5750 3900 5750 3800
Wire Wire Line
	5900 3900 5900 3800
Text Label 4750 3800 0    60   ~ 0
1
Text Label 4300 3800 0    60   ~ 0
2
Text Label 4600 3800 0    60   ~ 0
3
Text Label 4450 3800 0    60   ~ 0
4
Text Label 5750 3800 0    60   ~ 0
5
Text Label 5600 3800 0    60   ~ 0
6
Text Label 2650 6900 0    60   ~ 0
5
$Comp
L JUMP_4X2 J14
U 1 1 586A30B1
P 9150 3750
F 0 "J14" H 9079 3768 50  0000 L CNN
F 1 "JUMP_4X2" H 9079 3684 40  0000 L CNN
F 2 "Mlab_Pin_Headers:Straight_2x04" H 9150 3750 60  0001 C CNN
F 3 "" H 9150 3750 60  0000 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 586A37F0
P 8600 3950
F 0 "#PWR09" H 8600 3700 60  0001 C CNN
F 1 "GND" H 8600 3800 60  0000 C CNN
F 2 "" H 8600 3950 60  0000 C CNN
F 3 "" H 8600 3950 60  0000 C CNN
	1    8600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3600 8600 3600
Wire Wire Line
	8600 3600 8600 3950
Wire Wire Line
	8750 3900 8600 3900
Connection ~ 8600 3900
Wire Wire Line
	8750 3800 8600 3800
Connection ~ 8600 3800
Wire Wire Line
	8750 3700 8600 3700
Connection ~ 8600 3700
$EndSCHEMATC
