#!/bin/bash
# Proper header for a Bash script.

# Changing Conky

echo "Changing Conky"
# If /home/$USERNAME exists, change the conkyrc file in this directory.
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.conkyrc
	cp $DIR_CONFIG/conky/conkyrc-regular /home/$USERNAME/.conkyrc
	chown $USERNAME:users /home/$USERNAME/.conkyrc
fi
rm /etc/skel/.conkyrc
cp $DIR_CONFIG/conky/conkyrc-regular /etc/skel/.conkyrc
chown $USERNAME:users /etc/skel/.conkyrc