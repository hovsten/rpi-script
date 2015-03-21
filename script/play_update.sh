#!/bin/bash

cd /home/pi/git/rpi-script
git pull

cp /etc/wpa_supplicant/wpa_supplicant.conf /home/pi/git/rpi-script/config-data
git add /home/pi/git/rpi-script
git commit -m "client update"

# My own playlist
#/home/pi/git/rpi-script/script/play_list.sh PLb89ENKNeEt4VcZjK2hxHxioq6st0IdkK

# Happy camp
/home/pi/git/rpi-script/script/play_list.sh PLUM8x224JrX8b9GEQFHUzkUr1ZVbdtpkW

