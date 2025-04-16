.DELETE_ON_ERROR:

hack.sms: hack.o temp
	wlalink -S -v -r temp $@

temp: hack.o
	printf "[objects]\n%s\n" $< > $@

hack.o: hack.asm
	wla-z80 -v -o $@ $<

.PHONY: all clean test
clean:
	rm -rf hack.sms hack.o hack.sym temp
