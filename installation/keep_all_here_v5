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


########################################
########  I3 K E E P  I T  L O C A L ###
########################################
# This file is an attempt to keep all necessary information on github
# for easy installation on an other computer
# Copy/paste line per line in terminal


# depending on how far you are in your installation some of these files
# will not yet exist - you can not remove what is not there
# ignore the errors


			# I 3  B L O C K S #

#use of i3blocks for bar 
ln -s ~/.i3/.i3blocks.conf ~/.i3blocks.conf

			# L X  A P P E A R A N C E #

#lxappearance will change two files - back these up to have them for later
# these files can be found in the installation folder
# making links does not seem to work - they are overwritten when changing the look

rm ~/.gtkrc-2.0
ln -s ~/.i3/.gtkrc-2.0 ~/.gtkrc-2.0 

rm ~/.config/gtk-3.0/settings.ini
ln -s ~/.i3/settings.ini ~/.config/gtk-3.0/settings.ini


			#  Z S H #

rm ~/.zshrc
ln -s ~/.i3/.zshrc ~/.zshrc

zsh login
ln -s ~/.i3/.zlogin ~/.zlogin


zsh profile
ln -s ~/.i3/.zprofile ~/.zprofile



			# X I N I T R C #

rm ~/.xinitrc
ln -s ~/.i3/.xinitrc ~/.xinitrc



			# B A S H R C #

#obsolete if you use zsh
rm ~/.bashrc
ln -s ~/.i3/.bashrc ~/.bashrc



