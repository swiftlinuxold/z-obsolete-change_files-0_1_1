#!/bin/bash
# Proper header for a Bash script.

# Changing SLiM settings and wallpaper

# Only available session is Rox-icewm
# Activate auto-login with demo as the default user
echo "Replacing the SLiM settings\n"
rm /etc/slim.conf
cp $DIR_CONFIG/slim/slim.conf /etc
chown $USERNAME:users /etc/slim.conf

# Removing excess SLiM themes
rm -r /usr/share/slim/themes/debian-moreblue
rm -r /usr/share/slim/themes/debian-moreblue-orbit  
rm -r /usr/share/slim/themes/debian-spacefun  
rm -r /usr/share/slim/themes/default

echo "Replacing the SLiM wallpaper\n"
rm /usr/share/slim/themes/antiX/*.jpg
wget -U Firefox http://www.swiftlinux.org/wallpaper/login-swiftlinux.jpg
mv login-swiftlinux.jpg /usr/share/slim/themes/antiX/background.jpg