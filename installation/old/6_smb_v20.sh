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

echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"