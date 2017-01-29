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
#tmpfs is getting to full at the end 
#making the tmpfs bigger with 1GB to ensure completion of scripts
#https://wiki.archlinux.org/index.php/Tmpfs
#this line was only necessary for vmware installations and virtualbox installations
#but does not seem to hurt installations on ssd or hd.
sudo mount -o remount,size=4G,noatime /tmp

# install awesome font for conky status bar

sh install-awesome-font-v1.sh


# Conky Aureola

sh conky-aureola-v3.sh

###############################################################################################

# Sardi-extra icons

sh icons-sardi-extra-v3.sh

###############################################################################################

# Sardi icons

sh icons-sardi-v3.sh

###############################################################################################

# Surfn icons

sh icons-surfn-v3.sh

###############################################################################################

# Arc theme

sh install-gtk-arc-theme-git-v1.sh

#############################################################################################

# Plank themes

#sh plank-themes-v2.sh

###############################################################################################

# Cursor theme

sh install-breeze-cursor-theme-v1.sh




echo "################################################################"
echo "#############  eye candy software  installed   #################"
echo "################################################################"

