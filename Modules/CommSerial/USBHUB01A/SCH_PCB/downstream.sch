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
LIBS:MLAB_CONNECTORS
LIBS:usbhub01a-cache
EELAYER 25 0
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
L GND #PWR081
U 1 1 55556EF6
P 2100 1750
F 0 "#PWR081" H 2100 1500 60  0001 C CNN
F 1 "GND" H 2100 1600 60  0000 C CNN
F 2 "" H 2100 1750 60  0000 C CNN
F 3 "" H 2100 1750 60  0000 C CNN
	1    2100 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR082
U 1 1 55556F56
P 2100 1750
F 0 "#PWR082" H 2100 1500 60  0001 C CNN
F 1 "GND" H 2100 1600 60  0000 C CNN
F 2 "" H 2100 1750 60  0000 C CNN
F 3 "" H 2100 1750 60  0000 C CNN
	1    2100 1750
	1    0    0    -1  
$EndComp
$Comp
L C C41
U 1 1 55556FAC
P 2100 1500
F 0 "C41" H 2100 1600 40  0000 L CNN
F 1 "100nF" H 2106 1415 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2138 1350 30  0001 C CNN
F 3 "" H 2100 1500 60  0000 C CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
$Comp
L CP2 C45
U 1 1 55556FAD
P 3890 2300
F 0 "C45" H 3890 2400 40  0000 L CNN
F 1 "100uF" H 3896 2215 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeD_Reflow" H 3928 2150 30  0001 C CNN
F 3 "" H 3890 2300 60  0000 C CNN
	1    3890 2300
	1    0    0    -1  
$EndComp
$Comp
L CP2 C47
U 1 1 55556FAE
P 4140 2300
F 0 "C47" H 4140 2400 40  0000 L CNN
F 1 "47uF" H 4146 2215 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 4178 2150 30  0001 C CNN
F 3 "" H 4140 2300 60  0000 C CNN
	1    4140 2300
	1    0    0    -1  
$EndComp
$Comp
L C C43
U 1 1 55556FAF
P 3600 2300
F 0 "C43" H 3600 2400 40  0000 L CNN
F 1 "100nF" H 3606 2215 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3638 2150 30  0001 C CNN
F 3 "" H 3600 2300 60  0000 C CNN
	1    3600 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 55556FB0
P 4440 2300
F 0 "D2" H 4440 2400 50  0000 C CNN
F 1 "LED" H 4440 2200 50  0000 C CNN
F 2 "Mlab_D:LED_1206" H 4440 2300 60  0001 C CNN
F 3 "" H 4440 2300 60  0000 C CNN
	1    4440 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R29
U 1 1 55556FB1
P 4440 2800
F 0 "R29" V 4520 2800 40  0000 C CNN
F 1 "330R" V 4447 2801 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4370 2800 30  0001 C CNN
F 3 "" H 4440 2800 30  0000 C CNN
	1    4440 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR083
U 1 1 55556FB2
P 4440 3100
F 0 "#PWR083" H 4440 2850 60  0001 C CNN
F 1 "GND" H 4440 2950 60  0000 C CNN
F 2 "" H 4440 3100 60  0000 C CNN
F 3 "" H 4440 3100 60  0000 C CNN
	1    4440 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR084
U 1 1 55556FB5
P 2850 2400
F 0 "#PWR084" H 2850 2150 60  0001 C CNN
F 1 "GND" H 2850 2250 60  0000 C CNN
F 2 "" H 2850 2400 60  0000 C CNN
F 3 "" H 2850 2400 60  0000 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR085
U 1 1 55556FB6
P 2100 1750
F 0 "#PWR085" H 2100 1500 60  0001 C CNN
F 1 "GND" H 2100 1600 60  0000 C CNN
F 2 "" H 2100 1750 60  0000 C CNN
F 3 "" H 2100 1750 60  0000 C CNN
	1    2100 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR086
U 1 1 55556FB7
P 3600 2550
F 0 "#PWR086" H 3600 2300 60  0001 C CNN
F 1 "GND" H 3600 2400 60  0000 C CNN
F 2 "" H 3600 2550 60  0000 C CNN
F 3 "" H 3600 2550 60  0000 C CNN
	1    3600 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR087
U 1 1 55556FB8
P 3890 2550
F 0 "#PWR087" H 3890 2300 60  0001 C CNN
F 1 "GND" H 3890 2400 60  0000 C CNN
F 2 "" H 3890 2550 60  0000 C CNN
F 3 "" H 3890 2550 60  0000 C CNN
	1    3890 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR088
U 1 1 55556FB9
P 4140 2550
F 0 "#PWR088" H 4140 2300 60  0001 C CNN
F 1 "GND" H 4140 2400 60  0000 C CNN
F 2 "" H 4140 2550 60  0000 C CNN
F 3 "" H 4140 2550 60  0000 C CNN
	1    4140 2550
	1    0    0    -1  
$EndComp
Text HLabel 2300 2050 0    60   BiDi ~ 0
PWRON1_BATEN1
$Comp
L TPS2001CDGNR U5
U 1 1 55556FAA
P 2750 1950
F 0 "U5" H 2700 2150 60  0000 C CNN
F 1 "TPS2001CDGN" H 2800 2300 60  0000 C CNN
F 2 "Mlab_IO:MSOP-8-1EP_3x3mm_Pitch0.65mm" H 2950 1900 60  0001 C CNN
F 3 "" H 2950 1900 60  0000 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
Text HLabel 4640 1900 2    60   BiDi ~ 0
DN1_VBUS
Text HLabel 4640 2050 2    60   BiDi ~ 0
OVERCUR1Z_TDI
$Comp
L GND #PWR089
U 1 1 555D7F57
P 2100 4450
F 0 "#PWR089" H 2100 4200 60  0001 C CNN
F 1 "GND" H 2100 4300 60  0000 C CNN
F 2 "" H 2100 4450 60  0000 C CNN
F 3 "" H 2100 4450 60  0000 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR090
U 1 1 555D7F76
P 2100 4450
F 0 "#PWR090" H 2100 4200 60  0001 C CNN
F 1 "GND" H 2100 4300 60  0000 C CNN
F 2 "" H 2100 4450 60  0000 C CNN
F 3 "" H 2100 4450 60  0000 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L C C42
U 1 1 555D7F82
P 2100 4200
F 0 "C42" H 2100 4300 40  0000 L CNN
F 1 "100nF" H 2106 4115 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 2138 4050 30  0001 C CNN
F 3 "" H 2100 4200 60  0000 C CNN
	1    2100 4200
	1    0    0    -1  
$EndComp
$Comp
L CP2 C46
U 1 1 555D7F88
P 3800 5000
F 0 "C46" H 3800 5100 40  0000 L CNN
F 1 "100uF" H 3806 4915 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeD_Reflow" H 3838 4850 30  0001 C CNN
F 3 "" H 3800 5000 60  0000 C CNN
	1    3800 5000
	1    0    0    -1  
$EndComp
$Comp
L CP2 C48
U 1 1 555D7F8E
P 4050 5000
F 0 "C48" H 4050 5100 40  0000 L CNN
F 1 "47uF" H 4056 4915 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 4088 4850 30  0001 C CNN
F 3 "" H 4050 5000 60  0000 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L C C44
U 1 1 555D7F94
P 3550 5000
F 0 "C44" H 3550 5100 40  0000 L CNN
F 1 "100nF" H 3556 4915 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 3588 4850 30  0001 C CNN
F 3 "" H 3550 5000 60  0000 C CNN
	1    3550 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 555D7F9A
P 4350 5000
F 0 "D3" H 4350 5100 50  0000 C CNN
F 1 "LED" H 4350 4900 50  0000 C CNN
F 2 "Mlab_D:LED_1206" H 4350 5000 60  0001 C CNN
F 3 "" H 4350 5000 60  0000 C CNN
	1    4350 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R30
U 1 1 555D7FA0
P 4350 5500
F 0 "R30" V 4430 5500 40  0000 C CNN
F 1 "330R" V 4357 5501 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 4280 5500 30  0001 C CNN
F 3 "" H 4350 5500 30  0000 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR091
U 1 1 555D7FA6
P 4350 5800
F 0 "#PWR091" H 4350 5550 60  0001 C CNN
F 1 "GND" H 4350 5650 60  0000 C CNN
F 2 "" H 4350 5800 60  0000 C CNN
F 3 "" H 4350 5800 60  0000 C CNN
	1    4350 5800
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 555D7FAC
P 3400 4300
F 0 "R28" V 3480 4300 40  0000 C CNN
F 1 "10K" V 3407 4301 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3330 4300 30  0001 C CNN
F 3 "" H 3400 4300 30  0000 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR092
U 1 1 555D7FB8
P 2850 5100
F 0 "#PWR092" H 2850 4850 60  0001 C CNN
F 1 "GND" H 2850 4950 60  0000 C CNN
F 2 "" H 2850 5100 60  0000 C CNN
F 3 "" H 2850 5100 60  0000 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 555D7FBE
P 2100 4450
F 0 "#PWR093" H 2100 4200 60  0001 C CNN
F 1 "GND" H 2100 4300 60  0000 C CNN
F 2 "" H 2100 4450 60  0000 C CNN
F 3 "" H 2100 4450 60  0000 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 555D7FC4
P 3550 5250
F 0 "#PWR094" H 3550 5000 60  0001 C CNN
F 1 "GND" H 3550 5100 60  0000 C CNN
F 2 "" H 3550 5250 60  0000 C CNN
F 3 "" H 3550 5250 60  0000 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR095
U 1 1 555D7FCA
P 3800 5250
F 0 "#PWR095" H 3800 5000 60  0001 C CNN
F 1 "GND" H 3800 5100 60  0000 C CNN
F 2 "" H 3800 5250 60  0000 C CNN
F 3 "" H 3800 5250 60  0000 C CNN
	1    3800 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 555D7FD0
P 4050 5250
F 0 "#PWR096" H 4050 5000 60  0001 C CNN
F 1 "GND" H 4050 5100 60  0000 C CNN
F 2 "" H 4050 5250 60  0000 C CNN
F 3 "" H 4050 5250 60  0000 C CNN
	1    4050 5250
	1    0    0    -1  
$EndComp
Text HLabel 2300 4750 0    60   BiDi ~ 0
PWRON2_BATEN2
$Comp
L TPS2001CDGNR U6
U 1 1 555D7FD9
P 2750 4650
F 0 "U6" H 2700 4850 60  0000 C CNN
F 1 "TPS2001CDGN" H 2800 5000 60  0000 C CNN
F 2 "Mlab_IO:MSOP-8-1EP_3x3mm_Pitch0.65mm" H 2950 4600 60  0001 C CNN
F 3 "" H 2950 4600 60  0000 C CNN
	1    2750 4650
	1    0    0    -1  
$EndComp
Text HLabel 4550 4600 2    60   BiDi ~ 0
DN2_VBUS
Text HLabel 4550 4750 2    60   BiDi ~ 0
OVERCUR2Z_TMS
$Comp
L GND #PWR097
U 1 1 555D8231
P 6500 1750
F 0 "#PWR097" H 6500 1500 60  0001 C CNN
F 1 "GND" H 6500 1600 60  0000 C CNN
F 2 "" H 6500 1750 60  0000 C CNN
F 3 "" H 6500 1750 60  0000 C CNN
	1    6500 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR098
U 1 1 555D8250
P 6500 1750
F 0 "#PWR098" H 6500 1500 60  0001 C CNN
F 1 "GND" H 6500 1600 60  0000 C CNN
F 2 "" H 6500 1750 60  0000 C CNN
F 3 "" H 6500 1750 60  0000 C CNN
	1    6500 1750
	1    0    0    -1  
$EndComp
$Comp
L C C49
U 1 1 555D825C
P 6500 1500
F 0 "C49" H 6500 1600 40  0000 L CNN
F 1 "100nF" H 6506 1415 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 6538 1350 30  0001 C CNN
F 3 "" H 6500 1500 60  0000 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L CP2 C53
U 1 1 555D8262
P 8330 2300
F 0 "C53" H 8330 2400 40  0000 L CNN
F 1 "100uF" H 8336 2215 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeD_Reflow" H 8368 2150 30  0001 C CNN
F 3 "" H 8330 2300 60  0000 C CNN
	1    8330 2300
	1    0    0    -1  
$EndComp
$Comp
L CP2 C55
U 1 1 555D8268
P 8580 2300
F 0 "C55" H 8580 2400 40  0000 L CNN
F 1 "47uF" H 8586 2215 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 8618 2150 30  0001 C CNN
F 3 "" H 8580 2300 60  0000 C CNN
	1    8580 2300
	1    0    0    -1  
$EndComp
$Comp
L C C51
U 1 1 555D826E
P 8080 2300
F 0 "C51" H 8080 2400 40  0000 L CNN
F 1 "100nF" H 8086 2215 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 8118 2150 30  0001 C CNN
F 3 "" H 8080 2300 60  0000 C CNN
	1    8080 2300
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 555D827A
P 8880 2800
F 0 "R33" V 8960 2800 40  0000 C CNN
F 1 "330R" V 8887 2801 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 8810 2800 30  0001 C CNN
F 3 "" H 8880 2800 30  0000 C CNN
	1    8880 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR099
U 1 1 555D8280
P 8880 3100
F 0 "#PWR099" H 8880 2850 60  0001 C CNN
F 1 "GND" H 8880 2950 60  0000 C CNN
F 2 "" H 8880 3100 60  0000 C CNN
F 3 "" H 8880 3100 60  0000 C CNN
	1    8880 3100
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 555D8286
P 7850 1610
F 0 "R31" V 7930 1610 40  0000 C CNN
F 1 "10K" V 7857 1611 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7780 1610 30  0001 C CNN
F 3 "" H 7850 1610 30  0000 C CNN
	1    7850 1610
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0100
U 1 1 555D8292
P 7250 2400
F 0 "#PWR0100" H 7250 2150 60  0001 C CNN
F 1 "GND" H 7250 2250 60  0000 C CNN
F 2 "" H 7250 2400 60  0000 C CNN
F 3 "" H 7250 2400 60  0000 C CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0101
U 1 1 555D8298
P 6500 1750
F 0 "#PWR0101" H 6500 1500 60  0001 C CNN
F 1 "GND" H 6500 1600 60  0000 C CNN
F 2 "" H 6500 1750 60  0000 C CNN
F 3 "" H 6500 1750 60  0000 C CNN
	1    6500 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0102
U 1 1 555D829E
P 8080 2550
F 0 "#PWR0102" H 8080 2300 60  0001 C CNN
F 1 "GND" H 8080 2400 60  0000 C CNN
F 2 "" H 8080 2550 60  0000 C CNN
F 3 "" H 8080 2550 60  0000 C CNN
	1    8080 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0103
U 1 1 555D82A4
P 8330 2550
F 0 "#PWR0103" H 8330 2300 60  0001 C CNN
F 1 "GND" H 8330 2400 60  0000 C CNN
F 2 "" H 8330 2550 60  0000 C CNN
F 3 "" H 8330 2550 60  0000 C CNN
	1    8330 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0104
U 1 1 555D82AA
P 8580 2550
F 0 "#PWR0104" H 8580 2300 60  0001 C CNN
F 1 "GND" H 8580 2400 60  0000 C CNN
F 2 "" H 8580 2550 60  0000 C CNN
F 3 "" H 8580 2550 60  0000 C CNN
	1    8580 2550
	1    0    0    -1  
$EndComp
Text HLabel 6700 2050 0    60   BiDi ~ 0
PWRON3_BATEN3
$Comp
L TPS2001CDGNR U7
U 1 1 555D82B3
P 7150 1950
F 0 "U7" H 7100 2150 60  0000 C CNN
F 1 "TPS2001CDGN" H 7200 2300 60  0000 C CNN
F 2 "Mlab_IO:MSOP-8-1EP_3x3mm_Pitch0.65mm" H 7350 1900 60  0001 C CNN
F 3 "" H 7350 1900 60  0000 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
Text HLabel 9080 1900 2    60   BiDi ~ 0
DN3_VBUS
Text HLabel 9080 2050 2    60   BiDi ~ 0
OVERCUR3Z_TCK
$Comp
L GND #PWR0105
U 1 1 555D82BB
P 6500 4450
F 0 "#PWR0105" H 6500 4200 60  0001 C CNN
F 1 "GND" H 6500 4300 60  0000 C CNN
F 2 "" H 6500 4450 60  0000 C CNN
F 3 "" H 6500 4450 60  0000 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 555D82DA
P 6500 4450
F 0 "#PWR0106" H 6500 4200 60  0001 C CNN
F 1 "GND" H 6500 4300 60  0000 C CNN
F 2 "" H 6500 4450 60  0000 C CNN
F 3 "" H 6500 4450 60  0000 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
$Comp
L C C50
U 1 1 555D82E6
P 6500 4200
F 0 "C50" H 6500 4300 40  0000 L CNN
F 1 "100nF" H 6506 4115 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 6538 4050 30  0001 C CNN
F 3 "" H 6500 4200 60  0000 C CNN
	1    6500 4200
	1    0    0    -1  
$EndComp
$Comp
L CP2 C54
U 1 1 555D82EC
P 8150 5000
F 0 "C54" H 8150 5100 40  0000 L CNN
F 1 "100uF" H 8156 4915 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeD_Reflow" H 8188 4850 30  0001 C CNN
F 3 "" H 8150 5000 60  0000 C CNN
	1    8150 5000
	1    0    0    -1  
$EndComp
$Comp
L CP2 C56
U 1 1 555D82F2
P 8400 5000
F 0 "C56" H 8400 5100 40  0000 L CNN
F 1 "47uF" H 8406 4915 40  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 8438 4850 30  0001 C CNN
F 3 "" H 8400 5000 60  0000 C CNN
	1    8400 5000
	1    0    0    -1  
$EndComp
$Comp
L C C52
U 1 1 555D82F8
P 7900 5000
F 0 "C52" H 7900 5100 40  0000 L CNN
F 1 "100nF" H 7906 4915 40  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 7938 4850 30  0001 C CNN
F 3 "" H 7900 5000 60  0000 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 555D82FE
P 8700 5000
F 0 "D5" H 8700 5100 50  0000 C CNN
F 1 "LED" H 8700 4900 50  0000 C CNN
F 2 "Mlab_D:LED_1206" H 8700 5000 60  0001 C CNN
F 3 "" H 8700 5000 60  0000 C CNN
	1    8700 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R34
U 1 1 555D8304
P 8700 5500
F 0 "R34" V 8780 5500 40  0000 C CNN
F 1 "330R" V 8707 5501 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 8630 5500 30  0001 C CNN
F 3 "" H 8700 5500 30  0000 C CNN
	1    8700 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 555D830A
P 8700 5800
F 0 "#PWR0107" H 8700 5550 60  0001 C CNN
F 1 "GND" H 8700 5650 60  0000 C CNN
F 2 "" H 8700 5800 60  0000 C CNN
F 3 "" H 8700 5800 60  0000 C CNN
	1    8700 5800
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 555D8310
P 7800 4300
F 0 "R32" V 7880 4300 40  0000 C CNN
F 1 "10K" V 7807 4301 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7730 4300 30  0001 C CNN
F 3 "" H 7800 4300 30  0000 C CNN
	1    7800 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0108
U 1 1 555D831C
P 7250 5100
F 0 "#PWR0108" H 7250 4850 60  0001 C CNN
F 1 "GND" H 7250 4950 60  0000 C CNN
F 2 "" H 7250 5100 60  0000 C CNN
F 3 "" H 7250 5100 60  0000 C CNN
	1    7250 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0109
U 1 1 555D8322
P 6500 4450
F 0 "#PWR0109" H 6500 4200 60  0001 C CNN
F 1 "GND" H 6500 4300 60  0000 C CNN
F 2 "" H 6500 4450 60  0000 C CNN
F 3 "" H 6500 4450 60  0000 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0110
U 1 1 555D8328
P 7900 5250
F 0 "#PWR0110" H 7900 5000 60  0001 C CNN
F 1 "GND" H 7900 5100 60  0000 C CNN
F 2 "" H 7900 5250 60  0000 C CNN
F 3 "" H 7900 5250 60  0000 C CNN
	1    7900 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0111
U 1 1 555D832E
P 8150 5250
F 0 "#PWR0111" H 8150 5000 60  0001 C CNN
F 1 "GND" H 8150 5100 60  0000 C CNN
F 2 "" H 8150 5250 60  0000 C CNN
F 3 "" H 8150 5250 60  0000 C CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0112
U 1 1 555D8334
P 8400 5250
F 0 "#PWR0112" H 8400 5000 60  0001 C CNN
F 1 "GND" H 8400 5100 60  0000 C CNN
F 2 "" H 8400 5250 60  0000 C CNN
F 3 "" H 8400 5250 60  0000 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
Text HLabel 6700 4750 0    60   BiDi ~ 0
PWRON4_BATEN4
$Comp
L TPS2001CDGNR U8
U 1 1 555D833D
P 7150 4650
F 0 "U8" H 7100 4850 60  0000 C CNN
F 1 "TPS2001CDGN" H 7200 5000 60  0000 C CNN
F 2 "Mlab_IO:MSOP-8-1EP_3x3mm_Pitch0.65mm" H 7350 4600 60  0001 C CNN
F 3 "" H 7350 4600 60  0000 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
Text HLabel 8900 4600 2    60   BiDi ~ 0
DN4_VBUS
Text HLabel 8900 4750 2    60   BiDi ~ 0
OVERCUR4Z
$Comp
L R R27
U 1 1 55556FB3
P 3400 1600
F 0 "R27" V 3480 1600 40  0000 C CNN
F 1 "10K" V 3407 1601 40  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 3330 1600 30  0001 C CNN
F 3 "" H 3400 1600 30  0000 C CNN
	1    3400 1600
	1    0    0    -1  
$EndComp
Text HLabel 2530 1250 1    60   Input ~ 0
+5V
$Comp
L +5V #PWR0113
U 1 1 55ED6687
P 2350 1240
F 0 "#PWR0113" H 2350 1090 50  0001 C CNN
F 1 "+5V" H 2350 1380 50  0000 C CNN
F 2 "" H 2350 1240 60  0000 C CNN
F 3 "" H 2350 1240 60  0000 C CNN
	1    2350 1240
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0114
U 1 1 55ED66BB
P 3400 1300
F 0 "#PWR0114" H 3400 1150 50  0001 C CNN
F 1 "+3V3" H 3400 1440 50  0000 C CNN
F 2 "" H 3400 1300 60  0000 C CNN
F 3 "" H 3400 1300 60  0000 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Text HLabel 3590 1250 1    60   Input ~ 0
+3V3
$Comp
L +5V #PWR0115
U 1 1 55ED6CDB
P 6750 1250
F 0 "#PWR0115" H 6750 1100 50  0001 C CNN
F 1 "+5V" H 6750 1390 50  0000 C CNN
F 2 "" H 6750 1250 60  0000 C CNN
F 3 "" H 6750 1250 60  0000 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0116
U 1 1 55ED6D46
P 6750 3950
F 0 "#PWR0116" H 6750 3800 50  0001 C CNN
F 1 "+5V" H 6750 4090 50  0000 C CNN
F 2 "" H 6750 3950 60  0000 C CNN
F 3 "" H 6750 3950 60  0000 C CNN
	1    6750 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0117
U 1 1 55ED6D91
P 2350 3960
F 0 "#PWR0117" H 2350 3810 50  0001 C CNN
F 1 "+5V" H 2350 4100 50  0000 C CNN
F 2 "" H 2350 3960 60  0000 C CNN
F 3 "" H 2350 3960 60  0000 C CNN
	1    2350 3960
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0118
U 1 1 55ED6DDC
P 7850 1310
F 0 "#PWR0118" H 7850 1160 50  0001 C CNN
F 1 "+3V3" H 7850 1450 50  0000 C CNN
F 2 "" H 7850 1310 60  0000 C CNN
F 3 "" H 7850 1310 60  0000 C CNN
	1    7850 1310
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0119
U 1 1 55ED6E27
P 7800 4000
F 0 "#PWR0119" H 7800 3850 50  0001 C CNN
F 1 "+3V3" H 7800 4140 50  0000 C CNN
F 2 "" H 7800 4000 60  0000 C CNN
F 3 "" H 7800 4000 60  0000 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0120
U 1 1 55ED6E72
P 3400 4000
F 0 "#PWR0120" H 3400 3850 50  0001 C CNN
F 1 "+3V3" H 3400 4140 50  0000 C CNN
F 2 "" H 3400 4000 60  0000 C CNN
F 3 "" H 3400 4000 60  0000 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 555D8274
P 8880 2300
F 0 "D4" H 8880 2400 50  0000 C CNN
F 1 "LED" H 8880 2200 50  0000 C CNN
F 2 "Mlab_D:LED_1206" H 8880 2300 60  0001 C CNN
F 3 "" H 8880 2300 60  0000 C CNN
	1    8880 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1240 2350 1900
Wire Wire Line
	2750 2350 2900 2350
Wire Wire Line
	2850 2400 2850 2350
Connection ~ 2850 2350
Wire Wire Line
	3400 1300 3400 1450
Wire Wire Line
	3350 1900 4640 1900
Wire Wire Line
	3350 2050 4640 2050
Connection ~ 3400 2050
Wire Wire Line
	3890 2550 3890 2500
Wire Wire Line
	4140 2550 4140 2500
Wire Wire Line
	4440 2500 4440 2650
Wire Wire Line
	4440 2950 4440 3100
Wire Wire Line
	2100 1650 2100 1750
Wire Wire Line
	2100 1300 2530 1300
Connection ~ 2350 1300
Connection ~ 15150 5500
Wire Wire Line
	2100 1350 2100 1300
Wire Wire Line
	2350 2050 2300 2050
Wire Wire Line
	2350 3960 2350 4600
Wire Wire Line
	2750 5050 2900 5050
Wire Wire Line
	2850 5100 2850 5050
Connection ~ 2850 5050
Wire Wire Line
	3400 4000 3400 4150
Wire Wire Line
	3350 4600 4550 4600
Wire Wire Line
	3350 4750 4550 4750
Wire Wire Line
	3550 5150 3550 5250
Wire Wire Line
	3800 5250 3800 5200
Wire Wire Line
	4050 5250 4050 5200
Wire Wire Line
	4350 5200 4350 5350
Wire Wire Line
	4350 5650 4350 5800
Wire Wire Line
	2100 4350 2100 4450
Wire Wire Line
	2100 4000 2350 4000
Connection ~ 2350 4000
Wire Wire Line
	2100 4050 2100 4000
Wire Wire Line
	2350 4750 2300 4750
Wire Wire Line
	6750 1250 6750 1900
Wire Wire Line
	7150 2350 7300 2350
Wire Wire Line
	7250 2400 7250 2350
Connection ~ 7250 2350
Wire Wire Line
	7850 1310 7850 1460
Wire Wire Line
	7750 1900 9080 1900
Wire Wire Line
	8080 2450 8080 2550
Wire Wire Line
	8330 2550 8330 2500
Wire Wire Line
	8580 2550 8580 2500
Wire Wire Line
	8880 2500 8880 2650
Wire Wire Line
	8880 2950 8880 3100
Wire Wire Line
	6500 1650 6500 1750
Wire Wire Line
	6500 1300 6750 1300
Connection ~ 6750 1300
Wire Wire Line
	6500 1350 6500 1300
Wire Wire Line
	6750 3950 6750 4600
Wire Wire Line
	7150 5050 7300 5050
Wire Wire Line
	7250 5100 7250 5050
Connection ~ 7250 5050
Wire Wire Line
	7800 4000 7800 4150
Wire Wire Line
	7750 4600 8900 4600
Wire Wire Line
	7750 4750 8900 4750
Wire Wire Line
	7900 5150 7900 5250
Wire Wire Line
	8150 5250 8150 5200
Wire Wire Line
	8400 5250 8400 5200
Wire Wire Line
	8700 5200 8700 5350
Wire Wire Line
	8700 5650 8700 5800
Wire Wire Line
	6500 4350 6500 4450
Wire Wire Line
	6500 4000 6750 4000
Connection ~ 6750 4000
Wire Wire Line
	6500 4050 6500 4000
Wire Wire Line
	6750 4750 6700 4750
Wire Wire Line
	6750 2050 6700 2050
Wire Wire Line
	3590 1250 3590 1330
Wire Wire Line
	3590 1330 3400 1330
Wire Wire Line
	3400 1330 3400 1340
Connection ~ 3400 1340
Wire Wire Line
	2530 1300 2530 1250
Wire Wire Line
	3400 1750 3400 2050
Wire Wire Line
	3600 2140 3600 1900
Connection ~ 3600 1900
Wire Wire Line
	3600 2450 3600 2550
Wire Wire Line
	3890 2100 3890 1900
Connection ~ 3890 1900
Wire Wire Line
	4140 2100 4140 1900
Connection ~ 4140 1900
Wire Wire Line
	4440 2100 4440 1900
Connection ~ 4440 1900
Wire Wire Line
	8080 2150 8080 1900
Connection ~ 8080 1900
Wire Wire Line
	8330 2100 8330 1900
Connection ~ 8330 1900
Wire Wire Line
	8580 2100 8580 1900
Connection ~ 8580 1900
Wire Wire Line
	7850 1760 7850 2050
Connection ~ 7850 2050
Wire Wire Line
	3400 4450 3400 4750
Connection ~ 3400 4750
Wire Wire Line
	3550 4850 3550 4600
Connection ~ 3550 4600
Wire Wire Line
	3800 4800 3800 4600
Connection ~ 3800 4600
Wire Wire Line
	4050 4800 4050 4600
Connection ~ 4050 4600
Wire Wire Line
	4350 4800 4350 4600
Connection ~ 4350 4600
Wire Wire Line
	7750 2050 9080 2050
Wire Wire Line
	8880 2100 8880 1900
Connection ~ 8880 1900
Wire Wire Line
	7800 4450 7800 4750
Connection ~ 7800 4750
Wire Wire Line
	7900 4850 7900 4600
Connection ~ 7900 4600
Wire Wire Line
	8150 4800 8150 4600
Connection ~ 8150 4600
Wire Wire Line
	8400 4800 8400 4600
Connection ~ 8400 4600
Wire Wire Line
	8700 4800 8700 4600
Connection ~ 8700 4600
$EndSCHEMATC
