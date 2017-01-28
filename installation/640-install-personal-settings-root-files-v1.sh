#!/bin/bash
set -e
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


echo "Moving files to start i3wm"
echo "Using Sardi icons, Arc theme and noto font from previous scripts"

cp settings/.bash_profile ~/
cp settings/.bashrc ~/
cp settings/.gtkrc-2.0 ~/
cp settings/.xinitrc ~/
cp settings/.zlogin ~/
cp settings/.zshrc ~/
cp settings/bookmarks ~/.config/gtk-3.0/
cp settings/settings.ini ~/.config/gtk-3.0/


echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

