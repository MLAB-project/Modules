###############################################################################
# Makefile for the project Tykadlo
###############################################################################
# (c)miho www.mlab.cz


## User Settings
FREQUENCIES = 30000 32000 34000 36000 38000 40000 56000
CALIBRATION = 0

## Project
PROJECT     = Tykadlo
MCU         = attiny13
TARGETDIR   = BIN

## Variants - all supported frequences
VARIANTS    = $(foreach FREQ, $(FREQUENCIES), $(PROJECT)_$(FREQ))

## General Flags
CC          = avr-gcc

## Options common to compile, link and assembly rules
COMMON = -mmcu=$(MCU)

## Compile options common for all C compilation units.
CFLAGS = $(COMMON)
CFLAGS += -Wall -gdwarf-2 -std=gnu99 -Os -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
CFLAGS += -MD -MP -MT $(*F).o -MF dep/$(@F).d 

## Linker flags
LDFLAGS = $(COMMON)
LDFLAGS +=  -Wl

## Intel Hex file production flags
HEX_FLASH_FLAGS = -R .fuse -R .lock -R .signature

## Build
.PHONY: all
all:	allhex

.PHONY:	allhex
allhex:	$(foreach VAR, $(VARIANTS), $(VAR).hex)

.PHONY:	alllss
alllss:	$(foreach VAR, $(VARIANTS), $(VAR).lss)

%.o: $(PROJECT).c
	$(CC) $(INCLUDES) $(CFLAGS) -c $< -D CALIBRATION=$(CALIBRATION) -D IR_FREQUENCY=$(subst $(PROJECT)_,,$(@:.o=))UL -o $@

%.elf: %.o
	$(CC) $(LDFLAGS) $< $(LIBDIRS) $(LIBS) -o $@
	rm $<

%.hex: %.elf
	avr-objcopy -O ihex $(HEX_FLASH_FLAGS)  $< $(TARGETDIR)/$@

%.lss: %.elf
	avr-objdump -h -S $< > $(TARGETDIR)/$@

## Clean target
.PHONY: clean
clean:
	-rm -rf $(PROJECT)*.o $(PROJECT)*.elf dep/* $(TARGETDIR)/$(PROJECT)*.hex $(TARGETDIR)/$(PROJECT)*.lss
	-rmdir dep
	-rmdir $(TARGETDIR)

## Other dependencies
-include $(shell mkdir dep 2>/dev/null) $(wildcard dep/*)
-include $(shell mkdir $(TARGETDIR) 2>/dev/null)
