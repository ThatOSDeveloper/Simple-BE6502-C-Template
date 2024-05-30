CC=cl65
cflag= --start-addr 0x8000 --target none --cpu 6502 -O

ALL: clean build

clean:
	rm -rf *.bin src/*.o

build:
	$(CC) $(cflag) -o blink.bin src/main.c
	python3 fill_bin_with_zeros.py blink.bin