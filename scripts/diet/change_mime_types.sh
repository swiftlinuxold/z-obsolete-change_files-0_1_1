#!/bin/bash
# Proper header for a Bash script.

# Changing MIME-types (file associations)
# Changing Bittorrent file association

echo "Changing Bittorrent file association"
# If /home/$USERNAME exists, change the file association in this directory.
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_x-bittorrent 
	cp $DIR_CONFIG/MIME-types/application_x-bittorrent /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/
fi
rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_x-bittorrent
cp $DIR_CONFIG/MIME-types/application_x-bittorrent /etc/skel/.config/rox.sourceforge.net/MIME-types/

if [ -d "/home/$USERNAME" ]; then
    	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_x-bittorrent
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_x-bittorrent
else
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_x-bittorrent
fi