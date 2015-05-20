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

# Installation of zsh and oh-my-zsh

sudo pacman -S zsh

# Installation of OH-MY-ZSH from the github (best way to install!!)
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# You have to type this again - the password prompt is gone too fast
echo "You might need to type this again. Use your own name"
echo "chsh your_username -s /bin/zsh"