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




########################################
########    A P P S  R E P O    ########
########################################



######## A C C E S S O R I E S #########

sudo pacman -S terminator 

sudo pacman -S unclutter ristretto

sudo pacman -S zsh

sudo pacman -S notify-osd

sudo pacman -S xfce4-screenshooter

sudo pacman -S evince

# if you need to edit which extension goes with which program
# sudo pacman -S mime-editor

# Installation of OH-MY-ZSH from the github (best way to install!!)
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# You have to type this again - the password prompt is gone too fast
# echo "chsh your_username -s /bin/zsh"


######## D E V E L O P M E N T #########

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

sudo pacman -S gimp inkscape
sudo pacman -S gnome-font-viewer

######## I N T E R N E T       #########

sudo pacman -S firefox flashplugin transmission-gtk hexchat

# activate multilib in the pacman.conf
# sudo pacman -S skype

######## M U L T I M E D I A   #########

sudo pacman -S vlc 
#sudo pacman -S clementine


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
#packer qtcurve-gtk2 --noedit   ???
# start the program qtconfig-qt4 
#choose gtk+



######## S Y S T E M           #########

        # S Y S T E M  T O O L S # 

sudo pacman -S scrot screenfetch git htop wget lm_sensors sysstat glances 
sudo pacman -S numlockx inxi dmidecode hddtemp mesa-demos net-tools archey3 mlocate hardinfo
numlockx on
# if not already installed - xrandr - only for dual-screens to know how the screens are named
# and set them the right way
sudo pacman -S xorg-xrandr
# monitor the GB/TB of your harddisk
# sudo pacman -S baobab

#Monitor the partitions and format them
# sudo pacman -S gparted

# download statistics
sudo pacman -S vnstat 
systemctl enable vnstat
systemctl start vnstat

# taskmanager if htop and glances is not for you
sudo pacman -S xfce4-taskmanager

# download and burn iso
sudo pacman -S unetbootin

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
sudo pacman -S gvfs  # or thunar-vfs

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

sudo pacman -R i3-wm

# and install the replacement
# you will be asked to remove xcb-util-cursor

packer i3-gaps-next-git --noedit





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

#zsh enhancements
packer zsh-completions --noedit

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
#packer numix-circle-icon-theme  --noedit
git clone https://github.com/KotusWorks/Ardis-icon-theme.git ~/.themes/Ardis-icon-theme
git clone https://github.com/horst3180/Vertex-Icons ~/.icons/Vertex-Icons

        # T H E M E S #

packer evopop-gtk-theme  --noedit
#packer zukitwo-themes  --noedit
#packer omg-suite --noedit
packer vertex-themes-git --noedit
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

sudo pacman -S pamac lxsession

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

        # S A M B A #

# mkdir ~/Upload
# http://askubuntu.com/questions/101350/software-similar-to-nautilus-share-in-thunar
# net usershare add %n %f "" Everyone:F guest_ok=y && chmod 777 %f
sudo pacman -S samba
sudo cp  /etc/samba/smb.conf.default /etc/samba/smb.conf
sudo systemctl enable smbd.service
sudo systemctl start smbd.service
sudo systemctl enable nmbd.service
sudo systemctl start nmbd.service
sudo smbpasswd -a erik

#access samba share windows
sudo pacman -S gvfs-smb
#access samba share mac
sudo pacman -S gvfs-afp

# sudo systemctl restart ... if you run into trouble
# testparm will check the conf file for errors



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
