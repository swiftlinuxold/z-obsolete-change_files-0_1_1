#!/bin/bash
# Proper header for a Bash script.

# This script removes all wallpapers except for those with the smallest image files.
# This saves space.

echo "Removing excess wallpaper"
rm /usr/share/wallpaper/*.jpg

echo "Replacing the desktop wallpaper"
cp $DIR_WALLPAPERS/rox-swiftlinux.jpg /usr/share/wallpaper

# If /home/$USERNAME/Wallpaper exists, remove the excess wallpapers from this directory.
if [ -d "/home/$USERNAME/Wallpaper" ]; then
    	rm /home/$USERNAME/Wallpaper/*.jpg
	rm /home/$USERNAME/Wallpaper/sqwishybg.png
	cp $DIR_WALLPAPERS/rox-swiftlinux.jpg /home/$USERNAME/Wallpaper
fi

echo "Changing the wallpaper selection script"
rm /usr/local/bin/wallpaper.sh
cp $DIR_CONFIG/usr_local_bin/wallpaper.sh /usr/local/bin
chown root:root /usr/local/bin/wallpaper.sh
chmod a+x /usr/local/bin/wallpaper.sh
rm /usr/share/antiX/localisation/en/local-bin/wallpaper.sh
cp $DIR_CONFIG/usr_local_bin/wallpaper.sh /usr/share/antiX/localisation/en/local-bin
chmod a+x /usr/share/antiX/localisation/en/local-bin/wallpaper.sh

if [ -d "/home/$USERNAME" ]; then
	chown $USERNAME:users /home/$USERNAME/Wallpaper/rox-swiftlinux.jpg
    	chown $USERNAME:users /usr/share/antiX/localisation/en/local-bin/wallpaper.sh
else
	chown demo:users /usr/share/antiX/localisation/en/local-bin/wallpaper.sh
fi