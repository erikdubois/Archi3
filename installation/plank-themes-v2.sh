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




echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"


	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo "git was installed. Proceding..."

		else

		echo "################################################################"
		echo "installing git for this script to work"
		echo "################################################################"

	  	sudo apt-get install git -y
		  	
	fi


rm -rf /tmp/Plank-Themes

git clone https://github.com/erikdubois/Plank-Themes /tmp/Plank-Themes
find /tmp/Plank-Themes -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank" ] || mkdir -p $HOME"/.local/share/plank"

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank/themes" ] || mkdir -p $HOME"/.local/share/plank/themes"


cp -r /tmp/Plank-Themes/* ~/.local/share/plank/themes/

rm -rf /tmp/Plank-Themes



echo "################################################################"
echo "###################        plank themes installed   ############"
echo "################################################################"
