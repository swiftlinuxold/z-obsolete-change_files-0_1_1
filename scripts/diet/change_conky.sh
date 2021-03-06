#!/bin/bash
# Proper header for a Bash script.

# Changing Conky

echo "Changing Conky"
# If /home/$USERNAME exists, change the conkyrc file in this directory.
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.conkyrc
	cp $DIR_CONFIG/conky/conkyrc-diet /home/$USERNAME/.conkyrc
fi
rm /etc/skel/.conkyrc
cp $DIR_CONFIG/conky/conkyrc-diet /etc/skel/.conkyrc


if [ -d "/home/$USERNAME" ]; then
	chown $USERNAME:users /home/$USERNAME/.conkyrc
	chown $USERNAME:users /etc/skel/.conkyrc
else
	chown demo:users /etc/skel/.conkyrc
fi