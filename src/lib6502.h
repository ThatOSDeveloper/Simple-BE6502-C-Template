#ifndef LIB6502_H
#define LIB6502_H

// define STA macro
#define STA(address, value) ((*(volatile unsigned char *) address) = (value))

#endif