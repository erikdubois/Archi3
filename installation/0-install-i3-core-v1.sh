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

#Core stuff i3

echo "################################################################"
echo "i 3  improved tiling core files"
echo "################################################################"

sudo pacman -S --noconfirm --needed i3-wm i3lock i3status 


########        C O R E   i 3   A  U R    #########

# alternative menu faster and only desktop apps

echo "################################################################"
echo "j4-dmenu-desktop-git"   
echo "################################################################"

packer -S j4-dmenu-desktop-git --noedit --noconfirm

# alternative menu for i3 with larger fonts and font choice 

echo "################################################################"
echo "dmenu-xft for bigger fonts - Remove dmenu -- yes"
echo "################################################################"

packer -S dmenu-xft-mouse-height-fuzzy-history --noedit

# alternative information bar

echo "################################################################"
echo "i3 blocks"
echo "################################################################"

packer -S i3blocks --noedit --noconfirm


echo "################################################################"
echo "i 3 with gaps next git - Remove xcb-util-cursor -- yes"
echo "i 3 with gaps next git - Remove i3wm -- yes"
echo "################################################################"

# i3 with gaps between windows

packer -S i3-gaps-next-git --noedit


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

