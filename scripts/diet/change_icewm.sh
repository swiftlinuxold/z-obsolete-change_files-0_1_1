#!/bin/bash
# Proper header for a Bash script.

# Changing IceWM settings

# IceWM menu changes:
# Remove deleted programs from the menu
# Add a link to the Swift Linux help page
# Add the installation option
echo "Changing the IceWM menu\n"
# If /home/$USERNAME/.icewm exists, change the menu file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/menu
	cp $DIR_CONFIG/icewm/menu /home/$USERNAME/.icewm
	chown $USERNAME:users /home/$USERNAME/.icewm/menu
fi
rm /etc/skel/.icewm/menu
cp $DIR_CONFIG/icewm/menu /etc/skel/.icewm
chown $USERNAME:users /etc/skel/.icewm/menu
rm /usr/share/antiX/localisation/en/icewm/menu-en
cp $DIR_CONFIG/icewm/menu /usr/share/antiX/localisation/en/icewm/menu-en
chown root:root /usr/share/antiX/localisation/en/icewm/menu-en

echo "Changing the IceWM theme\n"
# If /home/$USERNAME/.icewm exists, change the theme file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/theme
	cp $DIR_CONFIG/icewm/theme /home/$USERNAME/.icewm
	chown $USERNAME:users /home/$USERNAME/.icewm/theme
fi
rm /etc/skel/.icewm/theme
cp $DIR_CONFIG/icewm/theme /etc/skel/.icewm
chown $USERNAME:users /etc/skel/.icewm/theme

echo "Changing the IceWM startup file\n"

# If /home/$USERNAME/.icewm exists, change the startup file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/startup
	cp $DIR_CONFIG/icewm/startup-diet /home/$USERNAME/.icewm/startup
	chmod a+x /home/$USERNAME/.icewm/startup
	chown $USERNAME:users /home/$USERNAME/.icewm/startup
fi
rm /etc/skel/.icewm/startup
cp $DIR_CONFIG/icewm/startup-diet /etc/skel/.icewm/startup
chmod a+x /etc/skel/.icewm/startup
chown $USERNAME:users /etc/skel/.icewm/startup