#!/bin/bash
# Proper header for a Bash script.

# Changing SLiM settings and wallpaper

# Only available session is Rox-icewm
# Activate auto-login with demo as the default user
echo "Replacing the SLiM settings\n"
rm /etc/slim.conf
cp $DIR_CONFIG/slim/slim.conf /etc
rm /usr/share/slim/slim.template
cp $DIR_CONFIG/slim/slim.template /usr/share/slim

# Removing excess SLiM themes
rm -r /usr/share/slim/themes/debian-moreblue
rm -r /usr/share/slim/themes/debian-moreblue-orbit  
rm -r /usr/share/slim/themes/debian-spacefun  
rm -r /usr/share/slim/themes/default

echo "Replacing the SLiM wallpaper\n"
rm /usr/share/slim/themes/antiX/*.jpg
cp $DIR_WALLPAPERS/login-swiftlinux.jpg /usr/share/slim/themes/antiX/background.jpg

if [ -d "/home/$USERNAME" ]; then
    	chown $USERNAME:users /etc/slim.conf
	chown $USERNAME:users /usr/share/slim/slim.template
else
	chown demo:users /etc/slim.conf
	chown demo:users /usr/share/slim/slim.template
fi