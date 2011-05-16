#!/bin/bash
# Proper header for a Bash script.

# Changing ROX Pinboard (desktop configuration)

echo "Changing ROX Pinboard (desktop configuration)"

if [ -d "/home/$USERNAME/.config" ]; then
    	rm /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb*
	cp $DIR_CONFIG/rox/pb_swift-diet /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
fi

rm /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb*
cp $DIR_CONFIG/rox/pb_swift-diet /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift


