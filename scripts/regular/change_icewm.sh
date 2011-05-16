#!/bin/bash
# Proper header for a Bash script.

# Changing IceWM settings

echo "Changing the IceWM startup file\n"

# If /home/$USERNAME/.icewm exists, change the startup file in this directory.
if [ -d "/home/$USERNAME/.icewm" ]; then
    	rm /home/$USERNAME/.icewm/startup
	cp $DIR_CONFIG/icewm/startup-regular /home/$USERNAME/.icewm/startup
	chmod a+x /home/$USERNAME/.icewm/startup
	chown $USERNAME:users /home/$USERNAME/.icewm/startup
fi
rm /etc/skel/.icewm/startup
cp $DIR_CONFIG/icewm/startup-regular /etc/skel/.icewm/startup
chmod a+x /etc/skel/.icewm/startup
chown $USERNAME:users /etc/skel/.icewm/startup