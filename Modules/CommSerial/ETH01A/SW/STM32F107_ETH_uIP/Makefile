BINARY = webserver_demo

UIP_SRCS = Utilities/uip/cgi.c Utilities/uip/fs.c Utilities/uip/httpd.c Utilities/uip/memb.c Utilities/uip/slipdev.c Utilities/uip/telnetd.c Utilities/uip/telnetd-shell.c Utilities/uip/uip_arch.c Utilities/uip/uip_arp.c Utilities/uip/uip.c Utilities/uip/uIPMain.c

SRCS = Utilities/STM32_EVAL/stm32_eval.c $(UIP_SRCS) $(wildcard Project/Webserver_Demo_uIP/*.c) $(wildcard Libraries/CMSIS/Core/CM3/*.c) $(wildcard Libraries/STM32F10x_StdPeriph_Driver/src/*.c) $(wildcard Libraries/STM32_ETH_Driver/src/*.c) Libraries/CMSIS/Core/CM3/startup/gcc/startup_stm32f10x_cl.s
OBJS = $(patsubst %.s, %.o, $(patsubst %.c, %.o, $(SRCS)))

INCLUDE = -I Libraries/CMSIS/Core/CM3/ -I Libraries/STM32F10x_StdPeriph_Driver/inc/ -I Libraries/STM32_ETH_Driver/inc -I Project/Webserver_Demo_uIP/ -I Utilities/uip/ -I Utilities/STM32_EVAL/

PREFIX		?= arm-none-eabi
CC		= $(PREFIX)-gcc
LD		= $(PREFIX)-gcc
OBJCOPY		= $(PREFIX)-objcopy
OBJDUMP		= $(PREFIX)-objdump
GDB		= $(PREFIX)-gdb

ARCH_FLAGS	= -mthumb -mcpu=cortex-m3 -msoft-float
CFLAGS		+= -g -Wall -Wextra $(INCLUDE) -fno-common $(ARCH_FLAGS) -MD -DNULL=0 \
		   -DSTM32F1 -DHSE_VALUE=25000000 -DSTM32F10X_CL -DUSE_STDPERIPH_DRIVER # -DUIP_DEBUG
LDSCRIPT	= linker.ld
LDFLAGS		+= -lc -lnosys -lm \
		   -T$(LDSCRIPT) -nostartfiles -Wl,--gc-sections \
		   $(ARCH_FLAGS) -mfix-cortex-m3-ldrd

ifneq ($(V),1)
Q := @
NULL := 2>/dev/null                   
else
LDFLAGS += -Wl,--print-gc-sections
endif

.SUFFIXES: .elf .bin .hex .srec .list .images
.SECONDEXPANSION:
.SECONDARY:

all: images

gdb: images
	$(GDB) bin/$(BINARY).elf

images: $(OBJS) bin/$(BINARY).elf bin/$(BINARY).bin bin/$(BINARY).hex bin/$(BINARY).srec bin/$(BINARY).list

bin/%.bin: bin/%.elf
	@echo "  OBJCOPY $@"
	$(Q)$(OBJCOPY) -Obinary $< $@

bin/%.hex: bin/%.elf
	@echo "  OBJCOPY $@"
	$(Q)$(OBJCOPY) -Oihex $< $@

bin/%.srec: bin/%.elf
	@echo "  OBJCOPY $@"
	$(Q)$(OBJCOPY) -Osrec $< $@

bin/%.list: bin/%.elf
	@echo "  OBJDUMP $@"
	$(Q)$(OBJDUMP) -S $< > $@

bin/%.elf: $(OBJS) $(LDSCRIPT)
	@echo "  LD      $@"
	$(Q)$(LD) -o $@ $(OBJS) $(LDFLAGS)

%.o: %.c Makefile
	@echo "  CC      $@"
	$(Q)$(CC) $(CFLAGS) -o $@ -c $<

%.o: %.s Makefile
	@echo "  ASM     $@"
	$(Q)$(CC) $(CFLAGS) -o $@ -c $<

clean:
	$(Q)rm -f $(OBJS)
	$(Q)rm -f bin/*

.PHONY: all clean images upload gdb
