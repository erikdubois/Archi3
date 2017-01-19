#!/bin/bash
#
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


sudo pacman -S --noconfirm --needed samba
sudo cp  /etc/samba/smb.conf.default /etc/samba/smb.conf
sudo systemctl enable smbd.service
sudo systemctl start smbd.service
sudo systemctl enable nmbd.service
sudo systemctl start nmbd.service
sudo smbpasswd -a erik

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb


# sudo systemctl restart ... if you run into trouble
# testparm will check the conf file for errors

# red hat samba sharing config 
packer --noconfirm --noedit system-config-samba

echo "Run system-config-samba to set up shares"


echo "################################################################"
echo "#########   samba  software installed           ################"
echo "################################################################"

