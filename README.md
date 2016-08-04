# Arch + i3 windows manager

This is my configuration for I3 improved tiling to be used on any archlinux distribution.

In the installation folder is all the data, explanations and scripts for you to have a great working environment but not directly a desktop environment.

I do not work with a display manager. Xorg and I3 provide all the display you will ever need.

I suggest you read up to better understand what a tiling window manager is.

It is really great once you have mastered the most important shortcuts.

https://i3wm.org/

# What can you achieve?

![Screenshots](http://i.imgur.com/MRH6EiB.jpg)


![Screenshots](http://i.imgur.com/2bMwqsl.jpg)


Yltra Flat Archlinux Blue from github

![Screenshots](http://i.imgur.com/oJuMEqT.jpg)



#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

    ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

    chmod +x typeyourfilename

Then you can execute it by typing

    ./typeyourfilename




# A R C H L I N U X 
----------------------- 

I started using Archlinux as a learning experience. I have tried installing all kinds of desktop environments (DE) and formatted many times my ssd's to start from scratch. After a while it was more practical to have a script of some kind to record the knowledge and to automate the things I had already learned. They became repetitive in nature.

The goal is to be quickly up and running after a clean install. 

That's why I have written a script to do just that. 

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
	git clone https://github.com/erikdubois/Archi3.git

This folder should be copied to a hidden folder in your home directory with the name  ~/.i3

    cp -r Archi3/ ~/.i3

Be sure to copy all the hidden files too!

    ls -al       reveals hidden files as well

Then you can start running the below mentioned script to be found in the folder installation.

I decided to split the logical entities in seperate files. Better to debug and better for users to understand.

The scripts have been numbered from 1 to 6. Follow the orderering to install all programs.


    cd .i3
    cd installation
	

    
    ./1_install_i3_core_vx.sh

This will install the actual i3 windows manager with a few special options like i3 with gaps rather than the standard one.We will also make sure yaourt is installed. Yaourt is used to install packer. Packer will serve as the aur helper from there on.

Beware when you say "Y" or "N" to the questions.



    ./2_install_i3_arch_repo _v1

This will install all programs coming from the "normal" arch repositories with the use of pacman.




    ./3_install_i3_aur_repo _vx.sh

This will install all programs coming from the AUR repositories.

If you see a program, you do not want. Just press ENTER and no number and it will be skipped.
In the script you will see a text to know which one you need to choose.

    For example

    echo "################################################################"
    echo "sane"
    echo "################################################################"

When that is done you run

	./4_keep_all_here_vx.sh

The last script is my idea to have all my data in one folder. So I make some symbolic links to them. I did notice that this is not so easy with the gtk files. The scripts makes backup files.

The zsh script is an alternative to bash more colourfull (>100 themes) and more plugins then you ever need.

    ./5_zsh_vx.sh

The smb script is to install samba or the way to share folders and files between computers if you need it.

    ./6_smb_vx.sh




<h2>Give it a go because <b> I 3 improved tiling </b> deserves to be more known.</h2>





# Reboot  N  O  W






# A N T E R G O S
------------------

Lateron I discovered that there are distro's that use the archlinux repositories like evo/lution (more an installer), Antergos and Manjaro, ...

I choose Antergos with their graphical installation guide cnchi to install a base installation. This is similar as the beginners guide from the archlinux wiki guide but not the same.

I wrote an installation document "read_me_installation_antergos_ base_vx" to cover the differences.

Please check that out if you want to install i3 on an antergos base installation.


![Screenshots](http://i.imgur.com/UUw3NUM.jpg)





# L I N U X  M I N T

Even later I decided to port my knowledge back to the .deb world and see if I could run i3 on an Ubuntu based distro like Linux Mint 17.1 Cinnamon.

That resulted in the following articles and is of no importance here.

https://github.com/erikdubois/mintyi3wm

http://erikdubois.be/linux/install-i3-on-linux-mint-17-1

![Screenshots](http://i.imgur.com/XKpWcSD.jpg)




# First use and tips

Follow some movies on youtube about i3 wm. That's the fastest way to learn.

Remember some important keyboard shortcuts

win + d = dmenu

shift + win + d = j4dmenu

ctrl + alt + a = xfce-appfinder

win + shift + e = exit i3

win + shift + r = reload config file

win + shift + q = closes any window

win + pause/break = let you suspend,hibernate, reboot and quit

All shortcuts are kept in one file : "config"
You do well to read this file.

lxappearance is the first program I use to change themes, fonts, icons.




# C O N C L U S I O N


I know that there are applications that seem 'out-of-place' in i3 but I like my working environment eye-candy. I admire for example the wallpapers creative people share with us. Through transparent terminals I will see them.

My background has been a variety of distro's. It is only natural I use a variety of programs from these distro's.

As for I3 you will need to be patient. I remember giving up a few times and somehow it challenged me to keep trying.

I am happy I persisted. 

<b>I3 is efficient.</b>

Advantages

    low memory consumption
    does not have many dependencies hence stabler
    keyboard driven
    software will be tiled automatically into two, three, four regions
    terminal is a WIN+ENTER away
    every program can get its own workspace
    switching between workspaces is easy and very practical
    have a backup environment to work if somehow your "other" desktop environment gets broken

 

Disadvantages

    takes time getting used to
    shortcuts to be remembered
    specific software to do things
    some terminal knowledge required


And remember if you start from this github, your learning curve will be much steeper and you will have the system up and running much faster.

Then you take it apart and write your own code.



# Remember

If you come from testing repo back to core repo run
Pass this option twice to enable package downgrades; in this case, pacman will select sync packages whose
versions do not match with the local versions. This can be useful when the user switches from a testing
repository to a stable one.

    pacman -Suu

If you deleted the wrong package and can not boot anymore, popin usb
    
    mount /dev/sda1 /mnt/arch

and

    pacman -S glibc --root /mnt/arch

------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.
------------------------------------