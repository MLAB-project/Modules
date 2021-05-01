# Supported targets: 
#	atmega8 atmega88 attiny45 (attiny45 is not usable in a board AVRUSB01A, it has different package)
#
# If compiled on Linux do this
#	chmod +x checksize

ALL_TARGETS=atmega8 atmega88 attiny45

# Execute these steps for each target CPU
# Do not remove empty line in this definition!
define EXEC
	echo ************* $(1) ************* avrusb *************
	rm -f i2c_tiny_usb_avrusb_$(1).hex
	make -f Makefile-avrusb.$(1) clean
	make -f Makefile-avrusb.$(1) all
	cp firmware.hex i2c_tiny_usb_avrusb_$(1).hex
	make -f Makefile-avrusb.$(1) clean
	echo ************* $(1) ************* usbtiny *************
	rm -f i2c_tiny_usb_usbtiny_$(1).hex
	make -f Makefile-usbtiny.$(1) clobber
	make -f Makefile-usbtiny.$(1) all
	cp main.hex i2c_tiny_usb_usbtiny_$(1).hex
	make -f Makefile-usbtiny.$(1) clobber

endef

all:
	@$(foreach III,$(ALL_TARGETS),$(call EXEC,$(III)))
