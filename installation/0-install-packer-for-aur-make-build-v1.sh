#!/bin/bash
#======================================================================================
#======================================================================================
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

########################################
########    P A C K E R         ########
########################################


# source : http://www.ostechnix.com/install-packer-arch-linux-2/

# straight from aur and github


# checking you have everything you need
# normally not needed
# sudo pacman -S base-devel fakeroot jshon expac git wget --noconfirm

#dependencies for packer

sudo pacman -S --noconfirm --needed grep sed bash curl pacman jshon expac

rm -rf /tmp/packer

mkdir /tmp/packer

wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer

mv PKGBUILD\?h\=packer /tmp/packer/PKGBUILD

cd /tmp/packer

makepkg -i /tmp/packer


#sudo pacman -U /tmp/packer/packer-*.pkg.tar.xz

echo "########################################"
echo "########    packer installed   #########"
echo "########################################"

