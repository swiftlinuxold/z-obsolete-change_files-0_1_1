#!/bin/bash

sh $DIR_SCRIPT/shared-regular.sh # antiX Linux to Regular Swift Linux 

echo "Replacing the desktop wallpaper"
cp $DIR_WALLPAPERS/rox-chicago.jpg /usr/share/wallpaper

echo "Replacing the SLiM wallpaper\n"
rm /usr/share/slim/themes/antiX/*.jpg
cp $DIR_WALLPAPERS/login-chicago.jpg /usr/share/slim/themes/antiX/background.jpg

# Changing ROX Pinboard (desktop configuration)

echo "Changing ROX Pinboard (desktop configuration)"

if [ -d "/home/$USERNAME/.config" ]; then
    	rm /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb*
	cp $DIR_CONFIG/rox/pb_swift-chicago /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
fi

rm /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb*
cp $DIR_CONFIG/rox/pb_swift-chicago /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift

# Adding the startup audio clip
echo "Adding the startup audio clip"
mkdir /usr/share/sounds/startup
cp $DIR_SOUNDS/sound-chicago.mp3 /usr/share/sounds/startup

# Changing Conky
echo "Changing Conky"
# If /home/$USERNAME exists, change the conkyrc file in this directory.
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.conkyrc
	cp $DIR_CONFIG/conky/conkyrc-chicago /home/$USERNAME/.conkyrc
fi
rm /etc/skel/.conkyrc
cp $DIR_CONFIG/conky/conkyrc-chicago /etc/skel/.conkyrc

# Changing IceWM startup file
echo "Changing the IceWM startup file\n"

# If /home/$USERNAME/.icewm exists, change the startup file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/startup
	cp $DIR_CONFIG/icewm/startup-chicago /home/$USERNAME/.icewm/startup
	chmod a+x /home/$USERNAME/.icewm/startup
fi
rm /etc/skel/.icewm/startup
cp $DIR_CONFIG/icewm/startup-chicago /etc/skel/.icewm/startup
chmod a+x /etc/skel/.icewm/startup


if [ -d "/home/$USERNAME" ]; then
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /usr/share/sounds/startup/sound-chicago.mp3
	chown $USERNAME:users /home/$USERNAME/.conkyrc
	chown $USERNAME:users /etc/skel/.conkyrc
	chown $USERNAME:users /home/$USERNAME/.icewm/startup
	chown $USERNAME:users /etc/skel/.icewm/startup
else
	chown demo:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown demo:users /usr/share/sounds/startup/sound-chicago.mp3
	chown demo:users /etc/skel/.conkyrc
	chown demo:users /etc/skel/.icewm/startup
fi

