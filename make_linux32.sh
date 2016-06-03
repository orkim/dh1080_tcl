#!/bin/bash -x
TCLINC=/usr/include/tcl8.6

gcc -c -static base64.c
gcc -c -static DH1080.c
gcc -fPIC -shared DH1080.o base64.o -o DH1080.so
gcc -static -I${TCLINC} -c DH1080_tcl.c
gcc -static -shared DH1080_tcl.o DH1080.o base64.o -o DH1080_tcl.so
