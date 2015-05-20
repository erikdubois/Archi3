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


########################################
########    A P P S    A U R    ########
########################################




######## A C C E S S O R I E S #########

#PDF reader
# activate multilib in the /etc/pacman.conf
# packer foxitreader --noedit
# packer acroread --noedit


#calculator
# sudo pacman -S gnome-calculator
packer galculator-gtk2 --noedit


######## D E V E L O P M E N T #########

#packer sublime-edit --noedit
packer sublime-text-dev --noedit

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

packer archlinux-artwork --noedit

######## I N T E R N E T       #########

packer google chrome --noedit

 ######## M U L T I M E D I A   #########

packer spotify  --noedit
packer kazam --noedit

######## O F F I C E           #########

packer focuswriter --noedit

######## S E T T I N G S       #########

        # I C O N S #

#packer ultra-flat-icons --noedit
packer evopop-icon-theme-git  --noedit
packer numix-circle-icon-theme  --noedit
git clone https://github.com/KotusWorks/Ardis-icon-theme.git ~/.themes/Ardis-icon-theme
git clone https://github.com/horst3180/Vertex-Icons ~/.icons/Vertex-Icons

        # T H E M E S #

packer evopop-gtk-theme  --noedit
#packer zukitwo-themes  --noedit
#packer omg-suite --noedit
packer vertex-themes-git --noedit
packer numix-themes-archblue --noedit
#packer ceti-3.14-theme --noedit
#packer zoncolor-themes-pack --no-edit

# gtk theme
# http://gnome-look.org/content/show.php/Just-Dark?content=168025

        # I C O N S #

#manjaro cursor theme
packer xcursor-menda-git --noedit
#packer xcursor-simpleandsoft --noedit

        # W A L L P A P E R #

# wallpaper changer
packer variety --noedit



######## S Y S T E M           #########

        
        # C L O U D #

packer dropbox --noedit
packer copy-agent --noedit



        # S Y S T E M  T O O L S # 

# steering spotify from the keyboard G15 Logitech - volume and next/previous/stop/pause
packer playerctl --noedit

# screenart for hardware and software
packer alsi --noedit
packer screenfo --noedit

# if you want a program that tells to update
# or just type sudo pacman -Syu when you feel like it
# packer pamac --noedit   # if not on antergos
# execute pamac-tray in your config of i3
# install also lxsession to be able to update and install in gui
# sudo pacman -S lxsession

# sudo pacman -S pamac lxsession

        # T H U N A R #


        # F O N T S #

packer ttf-ms-fonts --noedit
#packer hermit --noedit
#packer terminess-powerline-font --noedit
packer font-manager  --noedit


        # U T I L I T I E S #

# activate multilib in the pacman.conf
# packer teamviewer  --noedit
packer usb-creator --noedit
# if using pamac you need some kind of policy kit to grant permission for updating
# sudo pacman -S polkit
# packer xfce-polkit-git --noedit
# want to add a nice wallpaper to your grub or just change the time or...
# https://launchpad.net/grub-customizer
# packer grub-customizer


       
        # S C A N N E R #

# http://www.linuxveda.com/2013/04/02/how-to-install-and-configure-hp-printer-in-arch-linux/
packer sane --noedit
packer simple-scan 

#edit following file dll.conf and uncomment line with #hpaio
# This is my current network printer hp aio photosmart 7520

#sudo nano /etc/sane.d/dll.conf



###############################################################
#
#        EXTRA      EXTRA      EXTRA      EXTRA     EXTRA      
#
###############################################################

        # D U A L  S C R E E N #

#Dualscreen - this changes just type xrandr and change the numbers
# xrandr --output DVI-I-0 --auto --left-of DVI-I-3

        # K E Y B O A R D #  

#if keyboard not azerty put in config file
# exec setxkbmap be 

        # X P R O P #

#with xprop you can find out what the class name is of a program
#to set it floating for example

        # A U T O  L O G I N #

#if you want to autologin - aka at home no danger
# https://github.com/Arakis/autologin-on-boot
#packer autologin-on boot --noedit
#/bin/autologin-on-boot


        # S P E E D T E S T #

# terminal speedtest
# wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py
# chmod +x speedtest-cli
# ./speedtest-cli --share
# https://github.com/sivel/speedtest-cli

        
        # S M A R T G I T #
        
#packer smartgit


        # B U R N   I S O  T O   U S B #

#sudo fdisk -l
#sudo dd bs=4M if=/path/to/xxxxx.iso of=/dev/sdc && sync


        # U P D A T E #

#update notifier

# I choose pamac as notifier
# IF you want an update manager to tell you there are updates (icontray)
# pamac is the most complete one
# download from https://github.com/manjaro/pamac or
# git clone https://github.com/manjaro/pamac.git
# go to download folder
# Type : make
# Type : make install
# use pamac-tray in combination with notify-osd
# put pamac-tray in config of i3
# updates for repo
# sudo pacman -Syu
# updates for aur
# packer -Syu --noedit



##############################################
##########   A   P   P   L   E    ############
##########     MacBookPro 5.4     ############
##############################################
# macbookpro fan control for manjaro 0.8.12 Ascella
# packer macfanctld-git --noedit
# WHEN kernel update possibly missing not sure if I need it
# packer aic94xx --noedit
#
##############################################


echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
