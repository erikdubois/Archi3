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


echo "################################################################"
echo "Copy ulimit problem"
echo "################################################################"


sudo cp copy/60-copy.conf /etc/sysctl.d/60-copy.conf
sudo sysctl -p /etc/sysctl.d/60-copy.conf 

echo "################################################################"
echo "fonts"
echo "################################################################"

[ -d "~/.fonts" ] || mkdir -p $HOME/".fonts"
cp fonts/* ~/.fonts/


echo "################################################################"
echo "gimp"
echo "################################################################"

[ -d "~/.gimp-2.8" ] || mkdir -p $HOME/".gimp-2.8"
[ -d "~/.gimp-2.8/scripts" ] || mkdir -p $HOME/".gimp-2.8/scripts"
cp gimp/scripts/* ~/.gimp-2.8/scripts



echo "################################################################"
echo "mount_harddisk_rule"
echo "################################################################"

sudo cp mount_harddisk_rule/49-nopasswd_global.rules /etc/polkit-1/rules.d/49-nopasswd_global.rules



echo "################################################################"
echo "terminator"
echo "################################################################"

[ -d "~/.config/terminator" ] || mkdir -p $HOME/".config/terminator"
sudo cp terminator/config ~/.config/terminator/
cp thunar/configure_custom_actions/uca.xml ~/.config/Thunar/



echo "################################################################"
echo "variety"
echo "################################################################"

cp variety/scripts/* ~/.config/variety/scripts
cp variety/variety.conf ~/.config/variety/variety.conf


echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
