sudo dpkg --install teamviewer_i386.deb

#
#Selecting previously unselected package teamviewer:i386.
#(Reading database ... 135948 files and directories currently installed.)
#Preparing to unpack teamviewer_i386.deb ...
#Unpacking teamviewer:i386 (12.0.137452) ...
#dpkg: dependency problems prevent configuration of teamviewer:i386:
# teamviewer:i386 depends on libjpeg62.
# teamviewer:i386 depends on libsm6.
# teamviewer:i386 depends on libxtst6.
#
#dpkg: error processing package teamviewer:i386 (--install):
# dependency problems - leaving unconfigured
#Processing triggers for gnome-menus (3.13.3-11ubuntu1) ...
#Processing triggers for desktop-file-utils (0.23-1ubuntu3.18.04.1) ...
#Processing triggers for mime-support (3.60ubuntu1) ...
#Processing triggers for hicolor-icon-theme (0.17-2) ...
#Errors were encountered while processing:
# teamviewer:i386

sudo apt-get install libjpeg62 libsm6 libxtst6

#Reading package lists... Done
#Building dependency tree
#Reading state information... Done
#libsm6 is already the newest version (2:1.2.2-1).
#libxtst6 is already the newest version (2:1.2.3-1).
#You might want to run 'apt --fix-broken install' to correct these.
#The following packages have unmet dependencies:
# teamviewer:i386 : Depends: libjpeg62:i386 but it is not going to be installed
#                   Depends: libsm6:i386 but it is not going to be installed
#                   Depends: libxtst6:i386 but it is not going to be installed
#E: Unmet dependencies. Try 'apt --fix-broken install' with no packages (or specify a solution).


sudo apt --fix-broken install
sudo dpkg --install teamviewer_i386.deb
