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


# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

git clone https://github.com/erikdubois/Sardi-Extra /tmp/Sardi-Extra
find /tmp/Sardi-Extra -maxdepth 1 -type f -exec rm -rf '{}' \;

cp -rf /tmp/Sardi-Extra/* ~/.icons/

# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra




echo "################################################################"
echo "###################    icons sardi extra done  #################"
echo "################################################################"
