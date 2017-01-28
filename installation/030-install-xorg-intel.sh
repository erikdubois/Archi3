#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

# if you are in a base system with no xserver and desktop...
# this will install xserver

echo "This is the opensource driver for nvidia"

echo " Xserver setup"

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S xf86-video-intel --noconfirm --needed

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"

