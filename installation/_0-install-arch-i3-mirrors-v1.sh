#!/bin/bash
#
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

echo "################################################################"
echo "####  T O O L  T O  F I N D  F A S T E S T   S E R V E R S   ###"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector


echo "################################################################"
echo "####  F I N D I N G   S E R V E R S    B E  P A T I E N T    ###"
echo "################################################################"

# finding the fastest archlinux servers

sudo reflector -l 100 -f 50 -c BE -c NL -c FR -c DE -c GB --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d



echo "################################################################"
echo "####       fastest servers from neighbourhood saved          ###"
echo "################################################################"


sudo pacman -Syu


echo "################################################################"
echo "###################    Up to date         ######################"
echo "################################################################"

