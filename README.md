# DH1080.so TCL Library

## Description

Many scripts for eggdrop bots are distributed with the pre-compiled
DH1080_tcl.so library (either for 32-bit or 64-bit architectures) but the
source code is not provided.  For instance, trying to use the popular FiSH
encryption with an eggdrop bot (like blowcrypt.tcl) requires using one of
these pre-compiled libraries.

This is my effort to compile both the 32-bit and 64-bit DH1080_tcl.so library,
by piggy backing off of the great
[FiSH-irssi](http://github.com/falsovsky/FiSH-irssi) work.

The [FiSH-irssi](http://github.com/falsovsky/FiSH-irssi) project includes all
the required files to generate DH1080.so, but we still need a small wrapper
for TCL.  This wrapper file is included as DH1080_tcl.c in this repository.

## Building

This build requires all of the libraries needed for
[FiSH-irssi](http://github.com/falsovsky/FiSH-irssi) as well as the TCL
include files.

Something like `apt-get install tcl8.6-dev` may work for a Debian based
distrobution.

Get the [FiSH-irssi](http://github.com/falsovsky/FiSH-irssi) project building
first. See the details at it's project page. After you have it successfully
building, here's a quick outline.

  - Copy all files from this repo into `FiSH-irssi/src/`
  - Review and edit the `make_linux32.sh` or `make_linux64.sh` scripts. Update
    TCLINC path if needed.
  - Execute the build with `./make_linux32.sh` or `./make_linux64.sh` in the
    `FiSH-irssi/src/` directory.
  - Check for errors. Fix. Repeat until compiled.
  - Copy over the DH1080_tcl.so where it's needed and enjoy.
