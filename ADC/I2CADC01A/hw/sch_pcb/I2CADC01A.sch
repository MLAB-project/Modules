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
LIBS:asp-134604-01_(fmc)
LIBS:clock
LIBS:header
LIBS:Jumpers
LIBS:konektory
LIBS:mechanical
LIBS:MLAB_BATERY
LIBS:MLAB_D
LIBS:MLAB_IO
LIBS:MLAB_Jumpers
LIBS:MLAB_T
LIBS:OpAmp
LIBS:sata7-67491-1030
LIBS:I2CADC01A-cache
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
L LTC2485 U1
U 1 1 55460260
P 5550 4400
F 0 "U1" H 5600 4600 60  0000 C CNN
F 1 "LTC2485" H 5600 4450 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 5750 4350 60  0001 C CNN
F 3 "" H 5750 4350 60  0000 C CNN
	1    5550 4400
	1    0    0    -1  
$EndComp
$Comp
L _ P1
U 1 1 5546028B
P 2750 3850
F 0 "P1" H 2800 3950 50  0000 C CNN
F 1 "_" H 2750 3900 40  0000 C CNN
F 2 "Mlab_Con:WAGO256" H 3000 3700 60  0001 C CNN
F 3 "" H 3000 3700 60  0000 C CNN
	1    2750 3850
	-1   0    0    1   
$EndComp
$Comp
L _ P2
U 1 1 55460302
P 2750 4150
F 0 "P2" H 2800 4250 50  0000 C CNN
F 1 "_" H 2750 4200 40  0000 C CNN
F 2 "Mlab_Con:WAGO256" H 3000 4000 60  0001 C CNN
F 3 "" H 3000 4000 60  0000 C CNN
	1    2750 4150
	-1   0    0    1   
$EndComp
$Comp
L R-RESCUE-I2CADC01A R1
U 1 1 55460320
P 3400 3900
F 0 "R1" V 3480 3900 40  0000 C CNN
F 1 "10k" V 3407 3901 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3330 3900 30  0001 C CNN
F 3 "" H 3400 3900 30  0000 C CNN
	1    3400 3900
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-I2CADC01A R2
U 1 1 55460379
P 3400 4200
F 0 "R2" V 3480 4200 40  0000 C CNN
F 1 "10k" V 3407 4201 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3330 4200 30  0001 C CNN
F 3 "" H 3400 4200 30  0000 C CNN
	1    3400 4200
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-I2CADC01A C2
U 1 1 55460399
P 4050 4450
F 0 "C2" H 4050 4550 40  0000 L CNN
F 1 "100nF" H 4056 4365 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4088 4300 30  0001 C CNN
F 3 "" H 4050 4450 60  0000 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-I2CADC01A C1
U 1 1 554603CA
P 3750 4450
F 0 "C1" H 3750 4550 40  0000 L CNN
F 1 "100nF" H 3756 4365 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3788 4300 30  0001 C CNN
F 3 "" H 3750 4450 60  0000 C CNN
	1    3750 4450
	-1   0    0    1   
$EndComp
$Comp
L DIODE D3
U 1 1 55460409
P 4650 4050
F 0 "D3" H 4650 4150 40  0000 C CNN
F 1 "BAT46" H 4650 3950 40  0000 C CNN
F 2 "Mlab_D:MiniMELF_Standard" H 4650 4050 60  0001 C CNN
F 3 "" H 4650 4050 60  0000 C CNN
	1    4650 4050
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 5546045E
P 4350 4050
F 0 "D2" H 4350 4150 40  0000 C CNN
F 1 "BAT46" H 4350 3950 40  0000 C CNN
F 2 "Mlab_D:MiniMELF_Standard" H 4350 4050 60  0001 C CNN
F 3 "" H 4350 4050 60  0000 C CNN
	1    4350 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 554605BE
P 4050 4700
F 0 "#PWR01" H 4050 4450 60  0001 C CNN
F 1 "GND" H 4050 4550 60  0000 C CNN
F 2 "" H 4050 4700 60  0000 C CNN
F 3 "" H 4050 4700 60  0000 C CNN
	1    4050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3850 5000 3950
Wire Wire Line
	4200 3850 5000 3850
Connection ~ 4650 3850
Wire Wire Line
	5000 4250 5000 4050
Wire Wire Line
	4200 4250 5000 4250
Connection ~ 4650 4250
Wire Wire Line
	3650 3900 4200 3900
Wire Wire Line
	4200 3900 4200 3850
Connection ~ 4350 3850
Connection ~ 4350 4250
Wire Wire Line
	4200 4200 4200 4250
Wire Wire Line
	3650 4200 4200 4200
Wire Wire Line
	3150 3900 3050 3900
Wire Wire Line
	3050 4200 3150 4200
Wire Wire Line
	4050 4700 4050 4650
Wire Wire Line
	4050 4250 4050 4200
Connection ~ 4050 4200
Wire Wire Line
	3750 4250 3750 3900
Connection ~ 3750 3900
$Comp
L GND #PWR02
U 1 1 55460AC1
P 3750 4700
F 0 "#PWR02" H 3750 4450 60  0001 C CNN
F 1 "GND" H 3750 4550 60  0000 C CNN
F 2 "" H 3750 4700 60  0000 C CNN
F 3 "" H 3750 4700 60  0000 C CNN
	1    3750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4700 3750 4650
$Comp
L GND #PWR03
U 1 1 55460B3D
P 3100 4800
F 0 "#PWR03" H 3100 4550 60  0001 C CNN
F 1 "GND" H 3100 4650 60  0000 C CNN
F 2 "" H 3100 4800 60  0000 C CNN
F 3 "" H 3100 4800 60  0000 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L JUMP_3X2 J1
U 1 1 55460C17
P 600 6650
F 0 "J1" H 250 6850 50  0000 C CNN
F 1 "JUMP_3X2" V 600 6700 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 600 6650 60  0001 C CNN
F 3 "" H 600 6650 60  0000 C CNN
	1    600  6650
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 55460DCE
P 1250 7000
F 0 "D1" H 1250 7100 40  0000 C CNN
F 1 "M4" H 1250 6900 40  0000 C CNN
F 2 "Mlab_D:SMA_Standard" H 1250 7000 60  0001 C CNN
F 3 "" H 1250 7000 60  0000 C CNN
	1    1250 7000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 55460F0B
P 1050 7250
F 0 "#PWR04" H 1050 7000 60  0001 C CNN
F 1 "GND" H 1050 7100 60  0000 C CNN
F 2 "" H 1050 7250 60  0000 C CNN
F 3 "" H 1050 7250 60  0000 C CNN
	1    1050 7250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 55460F48
P 2400 6600
F 0 "#PWR05" H 2400 6450 60  0001 C CNN
F 1 "VCC" H 2400 6750 60  0000 C CNN
F 2 "" H 2400 6600 60  0000 C CNN
F 3 "" H 2400 6600 60  0000 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6600 1050 6600
Wire Wire Line
	1050 6600 1050 7250
Wire Wire Line
	1000 6800 1050 6800
Connection ~ 1050 6800
$Comp
L GND #PWR06
U 1 1 55461027
P 1250 7250
F 0 "#PWR06" H 1250 7000 60  0001 C CNN
F 1 "GND" H 1250 7100 60  0000 C CNN
F 2 "" H 1250 7250 60  0000 C CNN
F 3 "" H 1250 7250 60  0000 C CNN
	1    1250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7250 1250 7200
$Comp
L VCC #PWR07
U 1 1 554610D3
P 2700 6600
F 0 "#PWR07" H 2700 6450 60  0001 C CNN
F 1 "VCC" H 2700 6750 60  0000 C CNN
F 2 "" H 2700 6600 60  0000 C CNN
F 3 "" H 2700 6600 60  0000 C CNN
	1    2700 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 554610EA
P 2700 7100
F 0 "#PWR08" H 2700 6850 60  0001 C CNN
F 1 "GND" H 2700 6950 60  0000 C CNN
F 2 "" H 2700 7100 60  0000 C CNN
F 3 "" H 2700 7100 60  0000 C CNN
	1    2700 7100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-I2CADC01A C3
U 1 1 55461125
P 2700 6850
F 0 "C3" H 2700 6950 40  0000 L CNN
F 1 "10uF" H 2706 6765 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2738 6700 30  0001 C CNN
F 3 "" H 2700 6850 60  0000 C CNN
	1    2700 6850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 554611D3
P 2950 7100
F 0 "#PWR09" H 2950 6850 60  0001 C CNN
F 1 "GND" H 2950 6950 60  0000 C CNN
F 2 "" H 2950 7100 60  0000 C CNN
F 3 "" H 2950 7100 60  0000 C CNN
	1    2950 7100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-I2CADC01A C4
U 1 1 554611EB
P 2950 6850
F 0 "C4" H 2950 6950 40  0000 L CNN
F 1 "100nF" H 2956 6765 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2988 6700 30  0001 C CNN
F 3 "" H 2950 6850 60  0000 C CNN
	1    2950 6850
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR010
U 1 1 55461215
P 2950 6600
F 0 "#PWR010" H 2950 6450 60  0001 C CNN
F 1 "VCC" H 2950 6750 60  0000 C CNN
F 2 "" H 2950 6600 60  0000 C CNN
F 3 "" H 2950 6600 60  0000 C CNN
	1    2950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7100 2700 7050
Wire Wire Line
	2950 7100 2950 7050
Wire Wire Line
	2950 6650 2950 6600
$Comp
L REFERENCE D4
U 1 1 55461701
P 4900 3400
F 0 "D4" H 4750 3500 50  0000 C CNN
F 1 "LM4041-adj" H 4900 3300 40  0000 C CNN
F 2 "Mlab_IO:SOT-23" H 4900 3400 60  0001 C CNN
F 3 "" H 4900 3400 60  0000 C CNN
	1    4900 3400
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-I2CADC01A R3
U 1 1 55461894
P 4900 2800
F 0 "R3" V 4980 2800 40  0000 C CNN
F 1 "3K3" V 4907 2801 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4830 2800 30  0001 C CNN
F 3 "" H 4900 2800 30  0000 C CNN
	1    4900 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 3050 4900 3200
$Comp
L GND #PWR011
U 1 1 55461A7F
P 4900 3650
F 0 "#PWR011" H 4900 3400 60  0001 C CNN
F 1 "GND" H 4900 3500 60  0000 C CNN
F 2 "" H 4900 3650 60  0000 C CNN
F 3 "" H 4900 3650 60  0000 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3650 4900 3600
$Comp
L VCC #PWR012
U 1 1 55461BA2
P 4900 2500
F 0 "#PWR012" H 4900 2350 60  0001 C CNN
F 1 "VCC" H 4900 2650 60  0000 C CNN
F 2 "" H 4900 2500 60  0000 C CNN
F 3 "" H 4900 2500 60  0000 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2550 4900 2500
$Comp
L VCC #PWR013
U 1 1 55461E2B
P 6000 2950
F 0 "#PWR013" H 6000 2800 60  0001 C CNN
F 1 "VCC" H 6000 3100 60  0000 C CNN
F 2 "" H 6000 2950 60  0000 C CNN
F 3 "" H 6000 2950 60  0000 C CNN
	1    6000 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 J4
U 1 1 55461EC0
P 5650 2650
F 0 "J4" H 5650 2650 50  0000 C CNN
F 1 "CONN_3" H 5700 2550 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x03" H 5650 2650 60  0001 C CNN
F 3 "" H 5650 2650 60  0000 C CNN
	1    5650 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3000 5650 3500
Wire Wire Line
	5850 3100 5850 3500
Wire Wire Line
	5750 3100 6000 3100
Wire Wire Line
	6000 3100 6000 2950
Connection ~ 5850 3100
$Comp
L GND #PWR014
U 1 1 554627B5
P 5850 5550
F 0 "#PWR014" H 5850 5300 60  0001 C CNN
F 1 "GND" H 5850 5400 60  0000 C CNN
F 2 "" H 5850 5550 60  0000 C CNN
F 3 "" H 5850 5550 60  0000 C CNN
	1    5850 5550
	1    0    0    -1  
$EndComp
$Comp
L JUMP_5X2 J7
U 1 1 55462947
P 7200 3950
F 0 "J7" H 6850 4200 50  0000 C CNN
F 1 "JUMP_5X2" V 7150 3900 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x05" H 7200 3950 60  0001 C CNN
F 3 "" H 7200 3950 60  0000 C CNN
	1    7200 3950
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-I2CADC01A R4
U 1 1 55462BF7
P 6300 3400
F 0 "R4" V 6380 3400 40  0000 C CNN
F 1 "10k" V 6307 3401 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 6230 3400 30  0001 C CNN
F 3 "" H 6300 3400 30  0000 C CNN
	1    6300 3400
	-1   0    0    1   
$EndComp
$Comp
L R-RESCUE-I2CADC01A R5
U 1 1 55462CAD
P 6550 3400
F 0 "R5" V 6630 3400 40  0000 C CNN
F 1 "10k" V 6557 3401 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 6480 3400 30  0001 C CNN
F 3 "" H 6550 3400 30  0000 C CNN
	1    6550 3400
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR015
U 1 1 55462F74
P 6700 3550
F 0 "#PWR015" H 6700 3400 60  0001 C CNN
F 1 "VCC" H 6700 3700 60  0000 C CNN
F 2 "" H 6700 3550 60  0000 C CNN
F 3 "" H 6700 3550 60  0000 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4000 6700 4000
Wire Wire Line
	6700 4000 6700 3550
Wire Wire Line
	6800 3800 6750 3800
Wire Wire Line
	6750 3800 6750 4250
Wire Wire Line
	6800 4200 6750 4200
Connection ~ 6750 4200
$Comp
L GND #PWR016
U 1 1 55463150
P 6750 4250
F 0 "#PWR016" H 6750 4000 60  0001 C CNN
F 1 "GND" H 6750 4100 60  0000 C CNN
F 2 "" H 6750 4250 60  0000 C CNN
F 3 "" H 6750 4250 60  0000 C CNN
	1    6750 4250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 554632C3
P 6300 3100
F 0 "#PWR017" H 6300 2950 60  0001 C CNN
F 1 "VCC" H 6300 3250 60  0000 C CNN
F 2 "" H 6300 3100 60  0000 C CNN
F 3 "" H 6300 3100 60  0000 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 5546330A
P 6550 3100
F 0 "#PWR018" H 6550 2950 60  0001 C CNN
F 1 "VCC" H 6550 3250 60  0000 C CNN
F 2 "" H 6550 3100 60  0000 C CNN
F 3 "" H 6550 3100 60  0000 C CNN
	1    6550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3150 6550 3100
Wire Wire Line
	6300 3150 6300 3100
Wire Wire Line
	6200 3900 6800 3900
Wire Wire Line
	6200 3900 6200 4050
Wire Wire Line
	6200 4100 6800 4100
Wire Wire Line
	6200 4100 6200 4150
Wire Wire Line
	6300 3650 6300 3900
Connection ~ 6300 3900
Wire Wire Line
	6550 3650 6550 4100
Connection ~ 6550 4100
$Comp
L VCC #PWR019
U 1 1 55463936
P 7200 4450
F 0 "#PWR019" H 7200 4300 60  0001 C CNN
F 1 "VCC" H 7200 4600 60  0000 C CNN
F 2 "" H 7200 4450 60  0000 C CNN
F 3 "" H 7200 4450 60  0000 C CNN
	1    7200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4650 7100 4650
Wire Wire Line
	7200 4450 7200 4650
Wire Wire Line
	7100 4500 7200 4500
Connection ~ 7200 4500
Wire Wire Line
	6200 4500 6450 4500
Wire Wire Line
	6200 4650 6450 4650
Text Label 6200 4500 0    60   ~ 0
CA0
Text Label 6200 4650 0    60   ~ 0
CA1
Text Label 6350 4100 0    60   ~ 0
SCL
Text Label 6350 3900 0    60   ~ 0
SDA
$Comp
L CONN_2 J3
U 1 1 5547082E
P 5400 5450
F 0 "J3" H 5450 5550 50  0000 C CNN
F 1 "CONN_2" H 5500 5400 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 5450 5400 60  0001 C CNN
F 3 "" H 5450 5400 60  0000 C CNN
	1    5400 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 5500 5850 5500
Wire Wire Line
	5850 5300 5850 5550
Connection ~ 5850 5500
Wire Wire Line
	5700 5400 5700 5300
$Comp
L HOLE M1
U 1 1 5547153E
P 9600 1050
F 0 "M1" H 9600 1150 60  0000 C CNN
F 1 "HOLE" H 9600 950 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 9600 1050 60  0001 C CNN
F 3 "" H 9600 1050 60  0000 C CNN
	1    9600 1050
	1    0    0    -1  
$EndComp
$Comp
L HOLE M2
U 1 1 5547175D
P 9600 1350
F 0 "M2" H 9600 1450 60  0000 C CNN
F 1 "HOLE" H 9600 1250 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 9600 1350 60  0001 C CNN
F 3 "" H 9600 1350 60  0000 C CNN
	1    9600 1350
	1    0    0    -1  
$EndComp
$Comp
L HOLE M3
U 1 1 5547179E
P 10000 1050
F 0 "M3" H 10000 1150 60  0000 C CNN
F 1 "HOLE" H 10000 950 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10000 1050 60  0001 C CNN
F 3 "" H 10000 1050 60  0000 C CNN
	1    10000 1050
	1    0    0    -1  
$EndComp
$Comp
L HOLE M4
U 1 1 554717EE
P 10000 1350
F 0 "M4" H 10000 1450 60  0000 C CNN
F 1 "HOLE" H 10000 1250 60  0000 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10000 1350 60  0001 C CNN
F 3 "" H 10000 1350 60  0000 C CNN
	1    10000 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 55471984
P 9750 1500
F 0 "#PWR020" H 9750 1250 60  0001 C CNN
F 1 "GND" H 9750 1350 60  0000 C CNN
F 2 "" H 9750 1500 60  0000 C CNN
F 3 "" H 9750 1500 60  0000 C CNN
	1    9750 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 55471B4E
P 10150 1500
F 0 "#PWR021" H 10150 1250 60  0001 C CNN
F 1 "GND" H 10150 1350 60  0000 C CNN
F 2 "" H 10150 1500 60  0000 C CNN
F 3 "" H 10150 1500 60  0000 C CNN
	1    10150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1050 9750 1050
Wire Wire Line
	9750 1050 9750 1500
Wire Wire Line
	9650 1350 9750 1350
Connection ~ 9750 1350
Wire Wire Line
	10050 1050 10150 1050
Wire Wire Line
	10150 1050 10150 1500
Wire Wire Line
	10050 1350 10150 1350
Connection ~ 10150 1350
$Comp
L JUMP2_2x1 J6
U 1 1 554638DE
P 6800 4650
F 0 "J6" H 6500 4700 50  0000 C CNN
F 1 "JUMP2_2x1" H 7000 4550 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6800 4650 60  0001 C CNN
F 3 "" H 6800 4650 60  0000 C CNN
	1    6800 4650
	1    0    0    -1  
$EndComp
$Comp
L JUMP2_2x1 J5
U 1 1 55463896
P 6800 4500
F 0 "J5" H 6500 4550 50  0000 C CNN
F 1 "JUMP2_2x1" H 7000 4400 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6800 4500 60  0001 C CNN
F 3 "" H 6800 4500 60  0000 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 J8
U 1 1 5549AD37
P 6800 4850
F 0 "J8" H 6850 4950 50  0000 C CNN
F 1 "CONN_2" H 6900 4800 40  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x01" H 6850 4800 60  0001 C CNN
F 3 "" H 6850 4800 60  0000 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5549AD82
P 6450 4950
F 0 "#PWR022" H 6450 4700 60  0001 C CNN
F 1 "GND" H 6450 4800 60  0000 C CNN
F 2 "" H 6450 4950 60  0000 C CNN
F 3 "" H 6450 4950 60  0000 C CNN
	1    6450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4800 6450 4800
Wire Wire Line
	6450 4800 6450 4950
Wire Wire Line
	6500 4900 6450 4900
Connection ~ 6450 4900
$Comp
L INDUCTOR L1
U 1 1 5549B026
P 2050 6700
F 0 "L1" V 2000 6700 40  0000 C CNN
F 1 "BLM21PG300SN1D" V 2150 6700 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" H 2050 6700 60  0001 C CNN
F 3 "" H 2050 6700 60  0000 C CNN
	1    2050 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 6700 1750 6700
Connection ~ 1250 6700
Wire Wire Line
	1250 6800 1250 6700
Wire Wire Line
	2350 6700 2400 6700
Wire Wire Line
	2400 6600 2400 6800
Wire Wire Line
	2700 6650 2700 6600
$Comp
L GND #PWR023
U 1 1 5549E76A
P 2400 7200
F 0 "#PWR023" H 2400 6950 60  0001 C CNN
F 1 "GND" H 2400 7050 60  0000 C CNN
F 2 "" H 2400 7200 60  0000 C CNN
F 3 "" H 2400 7200 60  0000 C CNN
	1    2400 7200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-I2CADC01A C5
U 1 1 5549E770
P 1750 7000
F 0 "C5" H 1750 7100 40  0000 L CNN
F 1 "10uF" H 1756 6915 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 1788 6850 30  0001 C CNN
F 3 "" H 1750 7000 60  0000 C CNN
	1    1750 7000
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-I2CADC01A C6
U 1 1 5549E77C
P 2400 7000
F 0 "C6" H 2400 7100 40  0000 L CNN
F 1 "100nF" H 2406 6915 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2438 6850 30  0001 C CNN
F 3 "" H 2400 7000 60  0000 C CNN
	1    2400 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 7250 1750 7200
Wire Wire Line
	5750 3100 5750 3000
Wire Wire Line
	5550 3100 5550 3000
Connection ~ 4900 3100
Wire Wire Line
	1750 6700 1750 6800
Connection ~ 1750 6700
$Comp
L GND #PWR024
U 1 1 5549F26B
P 1750 7250
F 0 "#PWR024" H 1750 7000 60  0001 C CNN
F 1 "GND" H 1750 7100 60  0000 C CNN
F 2 "" H 1750 7250 60  0000 C CNN
F 3 "" H 1750 7250 60  0000 C CNN
	1    1750 7250
	1    0    0    -1  
$EndComp
Connection ~ 2400 6700
Wire Wire Line
	4900 3600 4700 3600
Wire Wire Line
	4700 3600 4700 3400
Wire Wire Line
	5550 3100 4900 3100
$Comp
L C-RESCUE-I2CADC01A C8
U 1 1 55B503B6
P 5300 3350
F 0 "C8" H 5300 3450 40  0000 L CNN
F 1 "22nF" H 5306 3265 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 5338 3200 30  0001 C CNN
F 3 "" H 5300 3350 60  0000 C CNN
	1    5300 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3150 5300 3100
Connection ~ 5300 3100
$Comp
L GND #PWR025
U 1 1 55B5066A
P 5300 3600
F 0 "#PWR025" H 5300 3350 60  0001 C CNN
F 1 "GND" H 5300 3450 60  0000 C CNN
F 2 "" H 5300 3600 60  0000 C CNN
F 3 "" H 5300 3600 60  0000 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3600 5300 3550
Connection ~ 3100 4200
$Comp
L GND #PWR026
U 1 1 55C4470D
P 1500 7250
F 0 "#PWR026" H 1500 7000 60  0001 C CNN
F 1 "GND" H 1500 7100 60  0000 C CNN
F 2 "" H 1500 7250 60  0000 C CNN
F 3 "" H 1500 7250 60  0000 C CNN
	1    1500 7250
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-I2CADC01A C7
U 1 1 55C44713
P 1500 7000
F 0 "C7" H 1500 7100 40  0000 L CNN
F 1 "100nF" H 1506 6915 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 1538 6850 30  0001 C CNN
F 3 "" H 1500 7000 60  0000 C CNN
	1    1500 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 7250 1500 7200
Wire Wire Line
	1500 6800 1500 6700
Connection ~ 1500 6700
$Comp
L R-RESCUE-I2CADC01A R6
U 1 1 55C450C3
P 3100 4500
F 0 "R6" V 3180 4500 40  0000 C CNN
F 1 "0R" V 3107 4501 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3030 4500 30  0001 C CNN
F 3 "" H 3100 4500 30  0000 C CNN
	1    3100 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4250 3100 4200
Wire Wire Line
	3100 4750 3100 4800
$EndSCHEMATC
