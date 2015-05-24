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
########    A P P S  R E P O    ########
########################################



######## A C C E S S O R I E S #########

sudo pacman -S terminator 

sudo pacman -S unclutter ristretto

sudo pacman -S notify-osd

sudo pacman -S xfce4-screenshooter xfce4-appfinder xfce4-power-manager

sudo pacman -S evince

# if you need to edit which extension goes with which program
# sudo pacman -S mime-editor



######## D E V E L O P M E N T #########

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

sudo pacman -S gimp inkscape
sudo pacman -S gnome-font-viewer

######## I N T E R N E T       #########

sudo pacman -S firefox flashplugin transmission-gtk hexchat
sudo pacman -S filezilla

# activate multilib in the pacman.conf
# sudo pacman -S skype

######## M U L T I M E D I A   #########

sudo pacman -S vlc 
#sudo pacman -S clementine
sudo pacman -S shotwell


######## O F F I C E           #########

sudo pacman -S geary


######## S E T T I N G S       #########

       # T H E M I N G #

# Theme, icons, borders, cursors
sudo pacman -S lxappearance
#sudo packer -S lxappearance2-git

# application to choose a wallpaper
sudo pacman -S nitrogen

# variety wallpaper changer needs feh to change the walls
# extra changes must be made see folder installation
sudo pacman -S feh 

# to configure qt4 X11 (spotify submenu's)
sudo pacman -S qt4
# start the program qtconfig-qt4 
#choose gtk+



######## S Y S T E M           #########

        # S Y S T E M  T O O L S # 

# all kind of tools to get system information

sudo pacman -S scrot screenfetch git htop wget lm_sensors sysstat glances 
sudo pacman -S numlockx inxi dmidecode hddtemp mesa-demos net-tools archey3 mlocate hardinfo
numlockx on

# if not already installed - xrandr - only for dual-screens to know how the screens are named
# and set them the right way

sudo pacman -S xorg-xrandr

# monitor the GB/TB of your harddisk
# sudo pacman -S baobab

# Monitor the partitions and format them
# sudo pacman -S gparted

# download statistics

sudo pacman -S vnstat 
systemctl enable vnstat
systemctl start vnstat

# taskmanager if htop and glances is not for you

sudo pacman -S xfce4-taskmanager

# download and burn iso
sudo pacman -S 

# sudo fdisk -l
# sudo ddrescue -d -D --force your iso.iso /dev/sdx
sudo pacman -S ddrescue

        # S O U N D #

sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware pulseaudio pulseaudio-alsa pavucontrol
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer0.10-ffmpeg

# for kazam

sudo pacman -S libsrtp
sudo pacman -S volumeicon


        # T H U N A R #

# sudo pacman -S spacefm
sudo pacman -S thunar file-roller tumbler thunar-archive-plugin thunar-volman

# if you want  a wastbasket in thunar you better install this
# or thunar-vfs
sudo pacman -S gvfs  

# installed via brasero
# sudo pacman -S gvfs

# better search with catfish and dependancies - in depth string search
sudo pacman -S catfish findutils mlocate tracker strigi pinot


        # F O N T S #
#sudo pacman -S ttf-ubuntu-font-family
#sudo pacman -S ttf-droid
#sudo pacman -S ttf-inconsolata
sudo pacman -S ttf-google-fonts

        # U T I L I T I E S #

sudo pacman -S gnome-disk-utility

        # P R I N T E R #

sudo pacman -S cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer
systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service


        # N E T W O R K #

# if you want a networkmanager and applet mostly for laptop/wireless as
# lan just works and gives no added value

sudo pacman -S networkmanager

# set nm-applet to run at boot in the config file



echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"

