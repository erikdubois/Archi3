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

sudo pacman -S clipit --confirm

sudo pacman -S evince --confirm

sudo pacman -S nemo  --confirm

sudo pacman -S notify-osd --confirm

sudo pacman -S terminator --confirm

sudo pacman -S unclutter ristretto --confirm




# if you need to edit which extension goes with which program
# sudo pacman -S mime-editor



######## D E V E L O P M E N T #########

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

sudo pacman -S gimp inkscape --confirm
sudo pacman -S gnome-font-viewer --confirm

######## I N T E R N E T       #########

sudo pacman -S firefox flashplugin transmission-gtk hexchat --confirm
sudo pacman -S filezilla --confirm

# activate multilib in the pacman.conf
# sudo pacman -S skype

######## M U L T I M E D I A   #########

sudo pacman -S vlc  --confirm
#sudo pacman -S clementine
sudo pacman -S shotwell --confirm

sudo pacman -S simplescreenrecorder --confirm

######## O F F I C E           #########

sudo pacman -S geary --confirm
sudo pacman -S evolution --confirm

######## S E T T I N G S       #########

       # T H E M I N G #

# Theme, icons, borders, cursors
sudo pacman -S lxappearance --confirm
#sudo packer -S lxappearance2-git
sudo pacman -S oxygen-cursors --confirm

# application to choose a wallpaper
sudo pacman -S nitrogen --confirm

# variety wallpaper changer needs feh to change the walls
# extra changes must be made see folder installation
sudo pacman -S feh  --confirm

# to configure qt4 X11 (spotify submenu's)
sudo pacman -S qt4 --confirm
# start the program qtconfig-qt4 
#choose gtk+



######## S Y S T E M           #########

        # S Y S T E M  T O O L S # 

# all kind of tools to get system information

sudo pacman -S scrot screenfetch git htop wget lm_sensors sysstat glances  --confirm
sudo pacman -S numlockx inxi dmidecode hddtemp mesa-demos net-tools archey3 mlocate hardinfo --confirm
numlockx on

# if not already installed - xrandr - only for dual-screens to know how the screens are named
# and set them the right way

sudo pacman -S xorg-xrandr --confirm

# monitor the GB/TB of your harddisk
# sudo pacman -S baobab

# Monitor the partitions and format them
# sudo pacman -S gparted

# download statistics

sudo pacman -S vnstat  --confirm
systemctl enable vnstat
systemctl start vnstat

# taskmanager if htop and glances is not for you

sudo pacman -S xfce4-taskmanager --confirm


# sudo fdisk -l
# sudo ddrescue -d -D --force your iso.iso /dev/sdx
sudo pacman -S ddrescue  --confirm

        # S O U N D #

sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware pulseaudio pulseaudio-alsa pavucontrol pavumeter paprefs paman  --confirm
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer0.10-ffmpeg --confirm


sudo pacman -S  file-roller 

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

