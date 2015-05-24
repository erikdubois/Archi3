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

echo "################################################################"
echo "installing zsh"
echo "################################################################"

sudo pacman -S zsh


#zsh enhancements

echo "################################################################"
echo "installing zsh-completions"
echo "################################################################"

packer zsh-completions --noedit


# Installation of OH-MY-ZSH from the github (best way to install!!)

echo "################################################################"
echo "downloading from github"
echo "################################################################"

wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh


# You have to type this again - the password prompt is gone too fast

echo "################################################################"
echo "oh-my-zsh"
echo "You might need to type this again. Use your own name"
echo "sudo chsh your_username -s /bin/zsh"
echo "all the symbolic links from keep_all_here_vx.sh point to zsh files"
echo "################################################################"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"