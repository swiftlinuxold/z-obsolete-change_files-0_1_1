#!/bin/bash
# Proper header for a Bash script.

# Changing the antiX Control Center

# Replacing files in /usr/local/bin and /usr/share/antiX/localisation/en/local-bin
# Remove the idesk, Fluxbox, and Nitrogen configuration options 
# (due to the removal of these packages)
# antiX Control Center -> Swift Linux Control Center

echo "Replacing the Control Center\n"
rm /usr/local/bin/antixcc.sh
cp $DIR_CONFIG/usr_local_bin/antixcc.sh /usr/local/bin
chown root:root /usr/local/bin/antixcc.sh
chmod a+x /usr/local/bin/antixcc.sh
rm /usr/share/antiX/localisation/en/local-bin/antixcc.sh
cp $DIR_CONFIG/usr_local_bin/antixcc.sh /usr/share/antiX/localisation/en/local-bin

chmod a+x /usr/share/antiX/localisation/en/local-bin/antixcc.sh

if [ -d "/home/$USERNAME" ]; then
    	chown $USERNAME:users /usr/share/antiX/localisation/en/local-bin/antixcc.sh
else
	chown demo:users /usr/share/antiX/localisation/en/local-bin/antixcc.sh
fi