#!/usr/bin/env bash

FEL=./sunxi-tools-master/sunxi-fel
IMG=./spi_orangepi_zero.img

#Check file
CHK_IMG=./chk_img.bin

# write
$FEL -p spiflash-write 0 $IMG

# read
$FEL -p spiflash-read 0 `stat -c %s $IMG` $CHK_IMG

# verify
cmp -b $IMG $CHK_IMG
