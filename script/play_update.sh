#!/bin/bash

# update to new version
cd /home/pi/git/rpi-script
sleep 10
git pull

# update Wifi
openssl rsautl -decrypt -inkey /home/pi/.ssh/id_rsa -in /home/pi/git/rpi-script/script/config-data/wpa_supplicant.conf.enc -out /home/pi/tmp/wpa_supplicant.conf
sudo mv /home/pi/tmp/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

# update config-data log
echo "+==========================================+" >> /home/pi/git/rpi-script/script/config-data/logs
echo "Restart at $(date)" >> /home/pi/git/rpi-script/script/config-data/logs
git add /home/pi/git/rpi-script
git commit -m "client updatei logs"
git push

# My own playlist
#/home/pi/git/rpi-script/script/play_list.sh PLb89ENKNeEt4VcZjK2hxHxioq6st0IdkK

# Happy camp
/home/pi/git/rpi-script/script/play_list.sh PLUM8x224JrX8b9GEQFHUzkUr1ZVbdtpkW

