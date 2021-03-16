#!/bin/sh
cd ~/klipper

make
/usr/sbin/service klipper stop
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_stm32f103xe_30FFD5054254353919561557-if00 btt-skr-mini
/usr/sbin/service klipper start
