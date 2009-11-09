###############################################################################
# Makefile for the project Tykadlo
###############################################################################
# (c)miho www.mlab.cz
# 1.00 - new makefile
# 1.01 - solved problem with default rules (invalid target "Makefile")

## User Settings
# Frequencies are in Hz, Callibration is usualy not needed
FREQUENCIES = 30000 32000 34000 36000 38000 40000 56000
CALIBRATION = 0

## Project
# Main source file name, target platform, destination directory
PROJECT     = Tykadlo
MCU         = attiny13
TARGETDIR   = BIN

## Variants - all supported frequences
# Combine project name with all required frequencies
VARIANTS    = $(foreach FREQ, $(FREQUENCIES), $(PROJECT)_$(FREQ))

## General Flags
CC          = avr-gcc

## Options common to compile, link and assembly rules
COMMON      = -mmcu=$(MCU)

## Compile options common for all C compilation units.
CFLAGS      = $(COMMON)
CFLAGS      += -Wall -gdwarf-2 -std=gnu99 -Os -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
CFLAGS      += -MD -MP -MT $(*F).o -MF dep/$(@F).d 

## Linker flags
LDFLAGS     = $(COMMON)
LDFLAGS     +=  -Wl

## Intel Hex file production flags
HEX_FLASH_FLAGS = -R .fuse -R .lock -R .signature

## Build

# Tag targets that are not / do not require files
.PHONY: all allhex alllss clean Makefile

# Main target
all:	allhex

# Subtarget - all variants hex files
allhex:	$(foreach VAR, $(VARIANTS), $(VAR).hex)

# Subtarget - all variants lss files
alllss:	$(foreach VAR, $(VARIANTS), $(VAR).lss)

# How to translate .o file - from .c with all possible frequencies
%.o: $(PROJECT).c
	$(CC) $(INCLUDES) $(CFLAGS) -c $< -D CALIBRATION=$(CALIBRATION) -D IR_FREQUENCY=$(subst $(PROJECT)_,,$(@:.o=))UL -o $@

# How to link .elf - from .o
%.elf: %.o
	$(CC) $(LDFLAGS) $< $(LIBDIRS) $(LIBS) -o $@
	rm $<

# How to generate .hex file - from .elf
%.hex: %.elf
	avr-objcopy -O ihex $(HEX_FLASH_FLAGS)  $< $(TARGETDIR)/$@

# How to generate .lss file - from .elf
%.lss: %.elf
	avr-objdump -h -S $< > $(TARGETDIR)/$@

## Clean target
clean:
	-rm -rf $(PROJECT)*.o $(PROJECT)*.elf dep/* $(TARGETDIR)/$(PROJECT)*.hex $(TARGETDIR)/$(PROJECT)*.lss
	-rmdir dep
	-rmdir $(TARGETDIR)

## Other dependencies
-include $(shell mkdir dep 2>/dev/null) $(wildcard dep/*)
-include $(shell mkdir $(TARGETDIR) 2>/dev/null)
