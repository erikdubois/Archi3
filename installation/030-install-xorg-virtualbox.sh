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

echo " Xserver setup"

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm --noconfirm --needed
echo
echo "################################################################"
echo "choose virtualbox-guest-modules-arch in the next installation"
echo "################################################################"

sleep 2

sudo pacman -S virtualbox-guest-utils 

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"

