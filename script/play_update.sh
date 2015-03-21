#!/bin/bash

# update to new version
cd /home/pi/git/rpi-script
git pull

# update config-data
echo "+==========================================+" >> /home/pi/git/rpi-script/script/config-data/logs
echo "Restart at $(date)" >> /home/pi/git/rpi-script/script/config-data/logs
#sudo openssl rsautl -encrypt -pubin -inkey /home/pi/git/rpi-script/script/pubkey/server.pem -in /etc/wpa_supplicant/wpa_supplicant.conf -out /home/pi/git/rpi-script/script/config-data/wpa_supplicant.conf.enc >> /home/pi/git/rpi-script/script/config-data/logs
git add /home/pi/git/rpi-script
git commit -m "client updatei logs"
git push


# My own playlist
#/home/pi/git/rpi-script/script/play_list.sh PLb89ENKNeEt4VcZjK2hxHxioq6st0IdkK

# Happy camp
/home/pi/git/rpi-script/script/play_list.sh PLUM8x224JrX8b9GEQFHUzkUr1ZVbdtpkW

