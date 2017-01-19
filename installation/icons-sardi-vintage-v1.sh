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




rm -rf /tmp/Sardi-Vintage
git clone https://github.com/erikdubois/Sardi-Vintage /tmp/Sardi-Vintage
find /tmp/Sardi-Vintage -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -r /tmp/Sardi-Vintage/* ~/.icons/
rm -rf /tmp/Sardi-Vintage




echo "################################################################"
echo "###################    icons sardi Vintage done  #################"
echo "################################################################"
