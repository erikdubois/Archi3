#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

sudo pacman -S --noconfirm --needed pulseaudio-alsa pulseaudio-bluetooth bluez bluez-libs bluez-utils bluez-firmware blueberry pavucontrol

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl daemon-reload


echo "reboot your system then ..."
echo "set with bluetooth icon in bottom right corner"
echo "change with pavucontrol to have a2dp sink"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
