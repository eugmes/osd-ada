OBJCOPY = avr-objcopy
AVRDUDE = avrdude -p m88 -F

all: osd-ada.hex

osd-ada.hex: osd-ada.elf

osd-ada.elf: src/font.ads FORCE
	gprbuild

src/font.ads: font.src tools/convfont
	tools/convfont < font.src > src/font.ads

clean:
	gprclean
	rm -f *.hex src/font.ads

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

program: osd-ada.hex
	$(AVRDUDE) -U flash:w:$<

fusepgm:
	$(AVRDUDE) -U lfuse:w:0x66:m

FORCE:

.PHONY: all clean program fusepgm
