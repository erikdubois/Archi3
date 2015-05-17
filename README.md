# i3wmarchdark

This is my configuration for I3 improved tiling to be used on any archlinux distribution.

In the installation folder is all the data, explanations and scripts for you to have a great working environment but not directly a desktop environment.

I do not work with a display manager. Xorg and I3 provide all the display you will ever need.

I suggest you read up to better understand what a tiling window manager is but is really great once you have mastered the most important shortcuts.

https://i3wm.org/

# What can you achieve?


<a target="_blank" href="http://erikdubois.be/wp-content/uploads/2015/05/i3onarch.png">
<img style="max-width:100%;" data-canonical-src="http://erikdubois.be/wp-content/uploads/2015/05/i3onarch.png" alt="alt tag" src="http://erikdubois.be/wp-content/uploads/2015/05/i3onarch.png">
</a>




# A R C H L I N U X 
----------------------- 

I started using Archlinux as a learning experience. I have tried installing all kinds of distro's and formatted many times my ssd's. After a while it was more practical to have a script of some kind to record the knowledge and to automate the things I already learned and that became repetitive in nature.

After a clean install I would like to be up and running as soon as possible. That's why I have written a script to do just that. 

#1. Installation of the base system

I started following the guide of 

https://wiki.archlinux.org/index.php/Beginners%27_guide

After this base installation you will end up in a black screen (terminal) with no graphical environment what so ever. Then it is up to the user to choose a Desktop Environment.

Good options are

	- xfce
	- cinnamon
	- gnome
	- kde
	- openbox

But we will install i3 instead.

#2. Installation via script

I run an installation script to quickly  get all my software after the base installation of Arch. For me this was quite a learning process, since I was a Redhat, Ubuntu, Linux Mint kind of guy over the last two decades. 

The idea is to download (if you have internet connection) the i3 github files :

	sudo pacman -S git
	git clone https://github.com/erikdubois/i3wmarchdark.git

This folder should be copied to a hidden folder in your home directory with the name  ~/.i3

Be sure to copy all the hidden files too!

Then you can start running the above mentioned script to be found in the folder installation.

	install_i3_vxx.sh

When that is done you run

	keep_all_here_vx.sh

The last script is my idea to have all my data in one folder. So I make some symbolic links to them. I did notice that this is not so easy with the gtk files.

Give it a go because I3 deserves to be more known.






# A N T E R G O S
------------------

Lateron I discovered that there are distro's that use the archlinux repositories like evo/lution (more an installer), Antergos and Manjaro, ...

I choose Antergos with their graphical installation guide cnchi to install a base installation. This is similar as the beginners guide from the archlinux wiki guide but not the same.

I wrote an installation document "read_me_installation_antergos_ base_vx" to cover the differences.

Please check that out if you want to install i3 on an antergos base installation.






# L I N U X  M I N T

Even later I decided to port my knowledge back to the .deb world and see if I could run i3 on an Ubuntu based distro like Linux Mint 17.1 Cinnamon.

That resulted in the following articles and is of no importance here.

https://github.com/erikdubois/mintyi3wm

http://erikdubois.be/linux/install-i3-on-linux-mint-17-1


# C O N C L U S I O N


I know that there are applications that seem 'out-of-place' in i3 but I like my working environment eye-candy. I admire for example the wallpapers creative people share with us. Through transparent terminals I will see them.

My background has been a variety of distro's. It is only natural I use a variety of programs from these distro's.

As for I3 you will need to be patient. I remember giving up a few times and somehow it challenged me to keep trying.

I am happy I persisted. 

<b>I3 is efficient.</b>

And remember if you start from this github, your learning curve will be much steeper and you will have the system up and running much faster.

Then you take it apart and write your own code.

------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Be free and share the knowledge.
------------------------------------