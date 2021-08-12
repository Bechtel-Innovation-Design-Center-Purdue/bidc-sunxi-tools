# bidc-sunxi-tools
Hold scripts and documentation on building and running sunxi-fel spiflash

# Building sunxi-tools on Cygwin

## Install into cygwin:
gcc, g++, make, pkg-config, bison, flex, swig, zlib-devel, libusb1.0, libusb1.0-devel

## Download and compile libfdt from dtc

  1. Download https://github.com/dgibson/dtc/archive/refs/tags/v1.6.1.tar.gz
  2. Unzip, cd into dtc-...
  3. `make libfdt`
  4. cd back up again
 
## Download and compile sunxi-tools master branch

   1. https://github.com/linux-sunxi/sunxi-tools/archive/refs/heads/master.zip
   2. unzip
   3. cd into sunxi-tools-master
   4. `CFLAGS=-I../dtc-1.6.1/libfdt/ LDFLAGS=-L../dtc-1.6.1/libfdt/ make`
   5. cd back up again

# Helpful scripts

`./flash_orangepi_zero.sh` - flashes, reads and compares an image file. Image file hardcoded to spi_orangepi-zero.img
