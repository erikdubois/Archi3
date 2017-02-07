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

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed archey3 baobab bleachbit catfish clementine conky curl
sudo pacman -S --noconfirm --needed darktable dconf-editor
sudo pacman -S --noconfirm --needed dmidecode 
sudo pacman -S --noconfirm --needed evince evolution filezilla firefox
sudo pacman -S --noconfirm --needed galculator geary gimp git gksu glances gnome-disk-utility 
sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool 
sudo pacman -S --noconfirm --needed gparted gpick grsync
sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop 
sudo pacman -S --noconfirm --needed inkscape inxi lm_sensors lsb-release meld mlocate mpv
sudo pacman -S --noconfirm --needed nemo net-tools numlockx openshot pinta plank polkit-gnome 
sudo pacman -S --noconfirm --needed redshift ristretto sane screenfetch scrot shotwell 
sudo pacman -S --noconfirm --needed simple-scan simplescreenrecorder smplayer sysstat 
sudo pacman -S --noconfirm --needed terminator thunar transmission-cli transmission-gtk
sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter  

sudo systemctl enable vnstat
sudo systemctl start vnstat

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################


echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"

