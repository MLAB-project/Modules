NEWS
====

11.11.2010

Firmware was edited to work without bootloader falashing tool.
So simply program PIC18F4550.hex in to PIC18F4550v01A module with 20MHz crystal. 
Connect it via I2C to CLKGEN01A. And you have wide tunable LO compatible with DG8SAQ USB Si570 synthesiser!   


14 Apr 2009

The UBW has 1 power indicator LED, and 2 blinking LED's usually used to indicate the
status of USB connections with the PC.

Charles (and maybe some of you) finds the blinking LED's to be too bright and
distracting.

So I have implemented a toggle switch (the PRG button) function for you to turn
the blinking on or off.

Once turned on or off, the setting is stored in EEPROM, so it will continue to
behave this way when you power off and next power on the UBW.

The default setting is LED blinking ON. So when you (re)flash the firmware, the
default is active.

14 Mar 2009

I have just released the latest version of my UBW Emulator firmware.  It now 
has (almost) all the functionalities of Fred (PE0FKO)'s v15.10 firmware for 
ATTINY45 and ATTINY85.  All the functions are accessible with Winrad with Fred's 
ExtIO_Si570_v0.8.dll, including the wonderful option of setting of the 
filter crossover points from the software.  The crossover points are stored 
in the UBW EEPROM so it will persist until changed again.  Another new feature
is the setting of floating point offset and multiplier in the firmware.  This
complements the setting of offset and (usually) integer multiplier in the PC
SDR software.

Winrad/ExtIO can be used to calibrate the UBW/Si570 (2 methods are available - 
calibrating the default freq, or against a known station freq, eg. WWV). 
Once calibrated, there is no need to calibrate other software - both set 
freq by value and set freq by register will give the correct calibrated 
freq now.  In PowerSDR, leave the fxtal freq at the default 114.285 Mhz.

The new UBW Emulator works perfectly with Rocky v3.6, PowerSDR-sr40,
and PowerSDR-IQ.  (set the Fxtal freq in the setup tab to the default 114.285 Mhz).

With Fred's v15.10 firmware in the ATTINY, users can use the ATTINY based USB 
interfaces to do auto band switching of the mobo for Rx.  To be able to do both Rx
and Tx BPF switching, Rx/Tx switching (PTT), and external LPF switching, from a
single USB connection, there are only 3 uC solutions that I know of:

1.  The UBW (or UBW32) with this UBW firmware
2.  Dave Brainerd's HSUSB, with firmware by Christos
3.  Arduino board (or clone), with PE0FKO firmware modified by Loftur TF3LJ.  
	See Message #31623


UBW EMULATOR
============
This is the UBW emulator firmware for emulating the AVR based
DG8SAQ USB Si570 synthesiser, and Tony's USB-i2C Interface.
It emulates most of the functions of the orginal DG8SAQ firmware.
In addition, it emulates the new functions of the PE0FKO firmware (v15.10)
by Fred, with smooth tune, calibration, setting of Auto BPF crossover
points, setting of startup freq etc.  After calibration of the UBW,
both set freq by value (used by Rocky) and set freq by register (used by
PowerSDR-sr40, with the fxtal freq set to the default 114.285 Mhz) will
give the correct calibrated freq output from the Si570.  No further
calibration with the PC software is required.

I would like to thank Joe Hopster who wrote the original UBW Si570
code, Tom DG8SAQ for the AVR synthesiser code, Mike Collins who has
been invaluable in helping with the debugging and testing, John Fisher
for the code example on Si570 slide, Edson for advice on BPF selection coding,
bug fixing and testing, Fred for help to emulate his v15.7 firmware,
and others who have contributed so much to Softrock and Si570.

The emulator firmware HEX file is loaded in the UBW (either PIC
18F2455, 18F2550 or 18F2553 version) by the Microchip USB bootloader.
See UBW website for more details about the bootloader.

Before starting the firmware (via the reset button, or on power up by
plugging in the USB), the UBW should be connected via i2c interface to
an Si570.  Power up the Si570 before the UBW.

There are several ways for connecting the UBW with the Si570.

(1) Connection is with 4 wires, +5V, Gnd, SCL, SDA, to an i2c
level converter, and then to Si570 with 4 wires, +3V3, Gnd, SCL, and
SDA.  If you use the WB6DHW Si570 board, it has the level converter built-in.  So
You can just connect the 4 wires to the header pins on the WB6DHW board.  Note
that the order of the 4 wires on the UBW is: GND, VCC, RB0, RB1.  The order
of the 4 header pins on WB6DHW board is: +5V, GND, SDA, SCL.

(2) If you are not using an IC such as GTL2002 for +5V to +3V3 conversion, you
can use discretes with the Philips (see AN97055 from Philips) 
i2c level converter circuit using 2 BS170's.

(3) The UBW Emulator firmware sets up the SCL and SDA pins as open collector outputs.
So you can just connect 3 wires from the UBW to the +3v3 Si570 on the Softrock: 
GND, SCL and SDA.  The SCL and SDA lines will have pullup resistors to +3V3 on the
Softrock pcb.  This has been tested to work.  HOwever, there is the risk that
if the UBW firmware malfunctions for some reason (eg loading the wrong firmware instead
of the Emulator firmware), the RB0 and RB1 (SDA and SCL) pins may go to output high of
+5V, which may damage the Si570 or other +3V3 chips.


The PC will detect the new USB device as a DG8SAQ-I2C device and as
far as the PC is concerned, the UBW behaves almost exactly like the
USB Si570 synthesiser (which is based on the AVR uController). When
prompted by the PC to install the driver for this device, you install
the AVR USB driver (from the USB Si570 synthesiser software download).
You will also need the libusb0.dll and libusb0.sys files installed
for the PC software to work (available also from the USB Si570 synthesiser
software package).

The following PC software programs have been tested with the UBW emulation so far:

1. SI570_USB_Test.exe from the USB Si570 synthesiser software package
2. USB_Synth.exe from the USB Si570 synthesiser software package
2. Rocky v3.6
3. Guido's PowerSDR v1.9.0 sr40
4. WinRad with Fred's ExtIO_Si570_v0.8.dll
5. Christos's PowerSDR-IQ v1.12.20

SI570_USB_Test.exe can be used test the USB communication and UBW
functions,and for calibrating the UBW-Si570 ie.

(1) Click "Read Si570 Register" - the default Si570 startup frequency
and register values will be displayed

(2) If you know the actual startup frequency of your Si570 (which is
close to but generally not equal to the nominal startup freq of 56.32
Mhz), you can do the calibration now by inputting the actual freq in the
text box to the left of the "cal on startup freq", and then hit "cal
on startup freq". The UBW-Si570 is now calibrated for "set freq by
value". The calibration is stored in the EEPROM of the UBW and you do
not need to re-calibrate again unless you reload the UBW firmware from
the .hex file.

(3) Now you can input any freq desired in the text box and hit either
"set freq by value" or "set freq by register". The si570 should now
output the freq set by you.  It should be accurate as set, and can be
confirmed with an external freq counter.


Many of the functions of the SI570_USB_Test.exe have been implemented,
including Paddle input, RXTX level, etc.

Both the "old" and "new" (with new icon) versions of USB_Synth.exe work in setting
the Si570 freq.  The old version uses set freq by value, and the new version
(with enhancements) uses set freq by register.

If the SI570_USB_Test run is OK, you can fire up Rocky v3.6 to use the
Si570-USB functionality.  Rocky uses the "set freq by value" method.  You can use
the Rocky calibration function with the UBW, but it should not be necessary and should
be avoided.  Use the calibration method in WinRad (see below under Calibration) or
the SI570_USB_Test.exe method (see above).

PowerSDR works by "set Freq by Register" method.  You can change freq by the band buttons 
or sliding the freq up and down with the mouse.  Leave the Fxtal
freq in PowerSDR "Setup" to the default 114.285 Mhz.  There is no need for
further calibration.

To use Winrad, you have to download the ExtIO_Si570.dll by Fred PE0FKO.  Put the v0.8
dll in the same directory as Winrad (usually installed in "c:\Program Files\Winrad" directory).


Calibration
===========
You can use Winrad (with ExtIO_Si570_v0.8.dll by Fred) to do the calibration. This is the
easier (and preferred method). There are two calibration methods in ExtIO_Si570.dll.  One is
calibrating to the factory default freq of the Si570 (a value close to 56.32 Mhz).  The
other method is to tune Winrad to a known frequency station, eg. the WWV stations broadcasting
at 2.5 Mhz, 5.0 Mhz, 10.0 Mhz, 15.0 Mhz etc., and then put in the actual frequencies.  For
example, you may find a good signal of WWV at 10.023 Mhz.  So the "tuned" freq is 10.023 Mhz,
but the "real" freq is 10.000 Mhz.  So you enter this real freq in the box and the hit "calibrate"
botton.

Si570 calibration can also be done with SI570_USB_Test.exe software,
to calibrate the startup freq accurately once after loading (or reloading)
of the firmware .hex file. The calibration data are then stored in the UBW EEPROM.


If UBW is not connected to the Si570
====================================
I have eliminated the readstartupconfiguration() step.  So now the UBW will NOT hang
when it is not connected to the i2c bus on startup.  On connection to USB it will be
recognized by the PC.

Of course, if you try to communicate with the Si570 it will hang and disconnect from
the USB if you don't have the Si570 connected at this time.

Restoring EEPROM to factory default condition
=============================================

After the UBW EEPROM is corrupted (eg. by mis-calibration), you can restore the factory default
by reloading the .hex file.  (Thanks to Mike for the suggestion.).  Alternatively, you can use
SI570_USB_Test.exe to sent 41 (hex) in the "request" box, and ff (hex) in the "Value" box,
then click "USB ctrl msg Data to Host". This then clears the EEPROM in the UBW to the default
condition and when you reset the UBW (hit the reset botton on the uBW, or by powering off
and then on again).

Using Winrad, there is a "reset" botton at the "calibrate" tab which will do the same thing.


Download
========

The UBW emulation firmware and the source files can be found in
Files->9V1AL->UBW emulation.



IO Port Pin assignment
======================


Pin assignments for the UBW are as follows:

Pin	Name		Input/Output	Active		Remarks

RA0	BPF_SO		O		H		BPF select S0
RA1	BPF_S1		O		H		BPF select S1
							S1,S0 selects 1 of 4 BPF's for Softrock
						
RA2	RXTX		O		H		PTT, H = Transmit

RB0	SDA		Open Collector			For i2c connection to Si570
RB1	SCL		Open Collector			may need conversion to +3v3
							in case of firmware failure
							(eg wrong firmware loaded)
							then RB0 and RB1 may be set
							to logic high output of +5V				

RB6	PADDLE_DIT	I		L		Paddle DIT Input, active low
RB7	PADDLE_DAH	I		L		Paddle DAH Input, active low
							As internal pullup is enabled,
							there is no need to add external
							pullup resistors.  Just ground the pin
							to activate.

RA3-5, RB2-5	LPF_x	O		H		LPF select pins
							This has to be customised for
							the LPF bank you use.
							Email me (lee188@singnet.com.sg)
							and I will sent you a customised hex file


Connections to SR v6.3 and Mobo v3.6
=====================================


UBW 		SRv6.3		Mobo v3.6	External Paddle

RA0 		- 		P7 Pin 1	-
RA1	 	- 		P7 Pin 2	-
RA2 		PTT_I 		K6 Pin 1	-
RB0 		SDA 		-		-
RB1 		SCL 		-		-
GND 		GND 		P10 Pin 2	Paddle Common
RB6 		- 		- 		Paddle dot (dit)
RB7	 	- 		- 		Paddle dash (dah)
-		+5V		P10 Pin 1	-


