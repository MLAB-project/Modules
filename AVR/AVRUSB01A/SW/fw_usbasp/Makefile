#
#   Makefile for usbasp
#   20061119   Thomas Fischl        original
#   20061120   Hanns-Konrad Unger   help: and TARGET=atmega48 added
#   20140209   Milan Horkel         added automatic built for more targets

ALL_TARGETS=atmega8 atmega88

# Default target
# --------------

ifndef $(TARGET)
	TARGET=atmega88
endif


# Define target dependent constants
# ---------------------------------

ifeq ($(TARGET), atmega8)
	HFUSE=0xC9
	LFUSE=0x9F
endif

ifeq ($(TARGET), atmega88)
	EFUSE=0xF9
	HFUSE=0xDE
	LFUSE=0xD7
endif


# ISP=bsd      PORT=/dev/parport0
# ISP=ponyser  PORT=/dev/ttyS1
# ISP=stk500   PORT=/dev/ttyS1
# ISP=usbasp   PORT=/dev/usb/ttyUSB0
# ISP=stk500v2 PORT=/dev/ttyUSB0
ISP=usbasp
PORT=/dev/usb/ttyUSB0

help:
	@echo "Usage: make                same as make help"
	@echo "       make help           same as make"
	@echo "       make all            build HEX for all target CPUs"
	@echo "       make hex            create HEX for default target CPU"
	@echo "       make clean          remove redundant data"
	@echo "       make disasm         create listing"
	@echo "       make flash          upload HEX into flash (for default target CPU)"
	@echo "       make fuses          program fuses (for default target CPU)"
	@echo "       make avrdude        test avrdude"
	@echo "Current values:"
	@echo "       TARGET=${TARGET}"
	@echo "       LFUSE=${LFUSE}"
	@echo "       HFUSE=${HFUSE}"
	@echo "       CLOCK=12000000"
	@echo "       ISP=${ISP}"
	@echo "       PORT=${PORT}"

COMPILE = avr-gcc -Wall -O2 -Iusbdrv -I. -mmcu=$(TARGET) # -DDEBUG_LEVEL=2

OBJECTS = usbdrv/usbdrv.o usbdrv/usbdrvasm.o usbdrv/oddebug.o isp.o clock.o tpi.o main.o

.c.o:
	$(COMPILE) -c $< -o $@
#-Wa,-ahlms=$<.lst

.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@
# "-x assembler-with-cpp" should not be necessary since this is the default
# file type for the .S (with capital S) extension. However, upper case
# characters are not always preserved on Windows. To ensure WinAVR
# compatibility define the file type manually.

.c.s:
	$(COMPILE) -S $< -o $@

cleantmp:
	rm -f usbasp.lst usbasp.obj usbasp.cof usbasp.list usbasp.map usbasp.bin *.o main.s usbdrv/*.o

clean: cleantmp
	rm -f usbasp_$(TARGET).hex usbasp_$(TARGET).eep.hex

# file targets:
usbasp.bin: $(OBJECTS)
	$(COMPILE) -o usbasp.bin $(OBJECTS) -Wl,-Map,usbasp.map

usbasp.hex: usbasp_$(TARGET).hex

usbasp_$(TARGET).hex: usbasp.bin
	rm -f usbasp_$(TARGET).hex usbasp_$(TARGET).eep.hex
	avr-objcopy -j .text -j .data -O ihex usbasp.bin $@
#	./checksize usbasp.bin
# do the checksize script as our last action to allow successful compilation
# on Windows with WinAVR where the Unix commands will fail.

disasm:	usbasp.bin
	avr-objdump -d usbasp.bin

cpp:
	$(COMPILE) -E main.c

flash:
	avrdude -c ${ISP} -p ${TARGET} -P ${PORT} -U flash:w:usbasp.hex

fuses:
	avrdude -c ${ISP} -p ${TARGET} -P ${PORT} -u -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

avrdude:
	avrdude -c ${ISP} -p ${TARGET} -P ${PORT} -v

# Fuse atmega8
# ------------
# Fuse atmega8 high byte HFUSE:
# 0xD9 = 1 1 0 1   1 0 0 1 = Factory Default Value
# 0xC9 = 1 1 0 0   1 0 0 1 <-- BOOTRST (boot reset vector at 0x0000)
#        ^ ^ ^ ^   ^ ^ ^------ BOOTSZ0
#        | | | |   | +-------- BOOTSZ1
#        | | | |   + --------- EESAVE (don't preserve EEPROM over chip erase)
#        | | | +-------------- CKOPT (full output swing)
#        | | +---------------- SPIEN (allow serial programming)
#        | +------------------ WDTON (WDT not always on)
#        +-------------------- RSTDISBL (reset pin is enabled)
# Fuse atmega8 low byte LFUSE:
# 0xE1 = 1 1 1 0   0 0 0 1 = Factory Default Value
# 0x9F = 1 0 0 1   1 1 1 1
#        ^ ^ \ /   \--+--/
#        | |  |       +------- CKSEL 3..0 (external >8M crystal)
#        | |  +--------------- SUT 1..0 (crystal osc, BOD enabled)
#        | +------------------ BODEN (BrownOut Detector enabled)
#        +-------------------- BODLEVEL (2.7V)
#
# Fuse atmega88
# -------------
# Fuse atmega88 extended byte:
# 0xF9 = 1 1 1 1   1 0 0 1 = Factory Default Value (default value is used)
# 0xF9 = 1 1 1 1   1 0 0 1 <-- BOOTRST (select vetor)
#                      \+/
#                       +----- BOOTSZ1..0 (Select Boot Size)
# Fuse high byte:
# 0xDF   1 1 0 1   1 1 1 1 = Factory Default Value (default value may be used)
# 0xDE = 1 1 0 1   1 1 1 0
#        ^ ^ ^ ^   ^ \-+-/
#        | | | |   |   +------ BODLEVEL (1.7-2.0V)
#        | | | |   +---------- EESAVE (don't preserve EEPROM over chip erase)
#        | | | +-------------- WDTON (WDT not always on)
#        | | +---------------- SPIEN (allow serial programming)!!!
#        | +------------------ DWEN (debug wire not enabled)
#        +-------------------- RSTDISBL (reset pin is not disabled)
# Fuse low byte:
# 0x62   0 1 1 0   0 0 1 0 = Factory Default Value (must be programmed to use xosc)
# 0xD7 = 1 1 0 1   0 1 1 1
#        ^ ^ \ /   \--+--/
#        | |  |       +------- CKSEL 3..0 (full swing xosc, BOD enabled)
#        | |  +--------------- SUT 1..0 (startup timer - see CKSEL)
#        | +------------------ CKOUT (clock output is not enabled)
#        +-------------------- CLKDIV8 (clock divider is not enabled)



SERIAL = `echo /dev/tty.USA19QI*`
UISP = uisp -dprog=$S -dserial=$(SERIAL) -dpart=auto
# The two lines above are for "uisp" and the AVR910 serial programmer connected
# to a Keyspan USB to serial converter to a Mac running Mac OS X.
# Choose your favorite programmer and interface.

uisp:	all
	$(UISP) --erase
	$(UISP) --upload --verify if=usbasp_$(TARGET).hex

# Execute these steps for each target CPU
# Do not remove empty line in this definition!
define EXEC
	rm -f usbasp_$(1).hex
	make TARGET=$(1) cleantmp
	make TARGET=$(1) usbasp_$(1).hex

endef

all:
	@$(foreach III,$(ALL_TARGETS),$(call EXEC,$(III)))
	@make cleantmp
