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

########################################
########  AFTER  BARE  INSTALL #########
########################################
# No desktop environment or display manager  nor is it needed

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm


# if you know what graphic driver to include you can do it here

# sudo pacman -S nvidia-340xx

########################################
########        C O R E        #########
########################################


#Core stuff i3
sudo pacman -S i3-wm i3lock i3status 

# !!!!! Menu system for i3
#sudo pacman -S dmenu
# !!!!!
# if you want to have dmenu with LARGER fonts as they are relatively
# small depending on your screen
# You should install dmenu-xft which I will do later on when we can download from AUR

#extra stuff i3
# we will download j4-dmenu later when we have yaourt and packer installed 


        # A U R   H E L P E R #

#downloading yaourt to get packer (comes from archlinux.fr)
# add these lines to the end of /etc/pacman.conf and update 
# https://wiki.archlinux.org/index.php/Pacman
# once I have yaourt I comment these lines out

########################################
#[archlinuxfr]
#SigLevel = Never
#Server = http://repo.archlinux.fr/$arch
########################################

# downloading yaourt to get packer (comes from archlinux.fr)
sudo pacman -S yaourt

# now we are downloading the aur helper I like
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






########        C O R E        #########

# alternative menu faster and only desktop apps
packer j4-dmenu-desktop   --noedit

# alternative menu for i3 with larger fonts and font choice 
packer dmenu-xft --noedit

# alternative bar
packer i3blocks --noedit

# i3 with gaps between windows
# if you decide to install this you will have to uninstall i3 first

#sudo pacman -R i3-wm

# and install the replacement
# you will be asked to remove xcb-util-cursor

packer i3-gaps-next-git --noedit



echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
