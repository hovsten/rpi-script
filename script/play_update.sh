#!/bin/bash

# update to new version
cd /home/pi/git/rpi-script
git pull

# update config-data
sudo openssl enc -aes256 -salt -in /etc/wpa_supplicant/wpa_supplicant.conf -out /home/pi/git/rpi-script/script/config-data/wpa_supplicant.conf.enc -pass file:/home/pi/git/rpi-script/script/pubkey/pub_1.key
git add /home/pi/git/rpi-script
git commit -m "client update"
git push

# My own playlist
#/home/pi/git/rpi-script/script/play_list.sh PLb89ENKNeEt4VcZjK2hxHxioq6st0IdkK

# Happy camp
/home/pi/git/rpi-script/script/play_list.sh PLUM8x224JrX8b9GEQFHUzkUr1ZVbdtpkW

