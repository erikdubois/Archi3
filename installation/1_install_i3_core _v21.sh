#!/bin/bash
#======================================================================================
#
#                  -`
#                  .o+`                 
#                 `ooo/                  
#                `+oooo:                 M  a  d  e    on 
#               `+oooooo:               
#               -+oooooo+:              
#             `/:-:++oooo+:             
#            `/++++/+++++++:                      A  R  C  H
#           `/++++++++++++++:           
#          `/+++ooooooooooooo/`         
#         ./ooosssso++osssssso+`        
#        .oossssso-````/ossssss+`       
#       -osssssso.      :ssssssso.          F  o   r   
#      :osssssss/        osssso+++.     
#     /ossssssss/        +ssssooo/-     
#   `/ossssso+/:-        -:/+osssso+-                           A   R   C   H
#  `+sso+:-`                 `.-/+oso: 
# `++:.                           `-/+/
# .`                                 `/
#
#======================================================================================

#======================================================================================
#                               I3 IMPROVED TILING
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================
#                               
# Interesting Sources : 
#
# https://i3wm.org/docs/userguide.html
# https://github.com/Arakis/autologin-on-boot
# http://www.linuxveda.com/2013/04/02/how-to-install-and-configure-hp-printer-in-arch-linux/
#
#======================================================================================

# Made to be installed on a clean Arch (wiki arch beginners guide part 1)
# no desktop environment, no display manager - directly on X11
# all kinds of programs are being used from different distro's but xfce4 is my preference.

# fstab for ssd 
# defaults,noatime,discard
# https://wiki.archlinux.org/index.php/Solid_State_Drives#Enable_TRIM_by_Mount_Flags
# sudo fstrim -v / and /home

########################################
########  AFTER  BARE  INSTALL #########
########################################

# No desktop environment or display manager  nor is it needed

echo "################################################################"
echo "installing xorg server"
echo "################################################################"

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm


# if you know what graphic driver to include you can do it here
# but again not needed for many of us since the latest
# linux kernels seem to support many graphicacl hardware.
# Test out and if needed install any proprietary drivers from nvidia or ati.

# sudo pacman -S nvidia-340xx

########################################
########        C O R E        #########
########################################

# at time of writing signature problem
# package is not corrupt
# nano /etc/pacman.conf and change 
# change to SigLevel   = Never 


# other solution is
# sudo mkdir /root/.gnupg
# sudo pacman-key --refresh-keys


#Core stuff i3

echo "################################################################"
echo "i 3  improved tiling core files"
echo "################################################################"

sudo pacman -S i3-wm i3lock i3status 

# Standard Menu system for i3
# sudo pacman -S dmenu
# if you want to have dmenu with LARGER fonts as they are relatively
# small depending on your screen
# You should install dmenu-xft which I will do later on when we can download from AUR

        # A U R   H E L P E R #

# downloading yaourt to get packer (comes from archlinux.fr)
# add these lines to the end of /etc/pacman.conf and update with sudo pacman -Syu
# https://wiki.archlinux.org/index.php/Pacman
# once I have yaourt I comment these lines out

########################################
#[archlinuxfr]
#SigLevel = Never
#Server = http://repo.archlinux.fr/$arch
########################################

# downloading yaourt to get packer (comes from archlinux.fr)

echo "################################################################"
echo "yaourt"
echo "################################################################"

sudo pacman -S yaourt

# now we are downloading the aur helper I like

echo "################################################################"
echo "packer"
echo "################################################################"

yaourt packer




#########################################

#########################################

#########################################
#
#        AUR      AUR       AUR      AUR      
# ONLY       ONLY      ONLY     ONLY     
#
#########################################

#########################################

#########################################






########        C O R E   i 3   A  U R    #########

echo "################################################################"
echo "Choose your Y and N wisely !!!"
echo "################################################################"

# alternative menu faster and only desktop apps

echo "################################################################"
echo "j4-dmenu-desktop-git"   
echo "################################################################"

packer j4-dmenu-desktop-git   --noedit

# alternative menu for i3 with larger fonts and font choice 

echo "################################################################"
echo "dmenu-xft for bigger fonts - Remove dmenu -- yes"
echo "################################################################"

packer dmenu-xft --noedit

# alternative information bar

echo "################################################################"
echo "i3 blocks"
echo "################################################################"

packer i3blocks --noedit


echo "################################################################"
echo "i 3 with gaps next git - Remove xcb-util-cursor -- yes"
echo "i 3 with gaps next git - Remove i3wm -- yes"
echo "################################################################"

# i3 with gaps between windows

packer i3-gaps-next-git --noedit


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

