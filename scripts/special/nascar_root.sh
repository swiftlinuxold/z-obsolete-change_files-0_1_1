#!/bin/bash

sh $DIR_SCRIPT/regular_root.sh # antiX Linux to Regular Swift Linux 

echo "Replacing the desktop wallpaper"
wget -U Firefox http://www.swiftlinux.org/wallpaper/rox-nascar.jpg
mv rox-nascar.jpg /usr/share/wallpaper

echo "Replacing the SLiM wallpaper"
rm /usr/share/slim/themes/antiX/*.jpg
wget -U Firefox http://www.swiftlinux.org/wallpaper/login-nascar.jpg
mv login-nascar.jpg /usr/share/slim/themes/antiX/background.jpg

# Changing ROX Pinboard (desktop configuration)

echo "Changing ROX Pinboard (desktop configuration)"

if [ -d "/home/$USERNAME/.config" ]; then
    	rm /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb*
	cp $DIR_CONFIG/rox/pb_swift-nascar /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
fi

rm /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb*
cp $DIR_CONFIG/rox/pb_swift-nascar /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift

# Adding the startup audio clip
echo "Adding the startup audio clip"
wget -U Firefox http://www.swiftlinux.org/sounds/sound-nascar.mp3
mkdir /usr/share/sounds/startup
mv sound-nascar.mp3 /usr/share/sounds/startup

# Changing Conky
echo "Changing Conky"
# If /home/$USERNAME exists, change the conkyrc file in this directory.
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.conkyrc
	cp $DIR_CONFIG/conky/conkyrc-nascar /home/$USERNAME/.conkyrc
	chown $USERNAME:users /home/$USERNAME/.conkyrc
fi
rm /etc/skel/.conkyrc
cp $DIR_CONFIG/conky/conkyrc-nascar /etc/skel/.conkyrc
chown $USERNAME:users /etc/skel/.conkyrc

# Changing IceWM startup file
echo "Changing the IceWM startup file\n"

# If /home/$USERNAME/.icewm exists, change the startup file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/startup
	cp $DIR_CONFIG/icewm/startup-nascar /home/$USERNAME/.icewm/startup
	chmod a+x /home/$USERNAME/.icewm/startup
	chown $USERNAME:users /home/$USERNAME/.icewm/startup
fi
rm /etc/skel/.icewm/startup
cp $DIR_CONFIG/icewm/startup-nascar /etc/skel/.icewm/startup
chmod a+x /etc/skel/.icewm/startup
chown $USERNAME:users /etc/skel/.icewm/startup

