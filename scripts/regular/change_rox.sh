#!/bin/bash
# Proper header for a Bash script.

# Changing ROX Pinboard (desktop configuration)

echo "Changing ROX Pinboard (desktop configuration)"

if [ -d "/home/$USERNAME/.config" ]; then
    	rm /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb*
	cp $DIR_CONFIG/rox/pb_swift-regular /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
fi

rm /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb*
cp $DIR_CONFIG/rox/pb_swift-regular /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift

rm /usr/local/bin/pinboardtoggle.sh
cp $DIR_CONFIG/usr_local_bin/pinboardtoggle.sh /usr/local/bin

if [ -d "/home/$USERNAME" ]; then
    	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown $USERNAME:users /usr/local/bin/pinboardtoggle.sh
else
	chown demo:users /etc/skel/.config/rox.sourceforge.net/ROX-Filer/pb_swift
	chown demo:users /usr/local/bin/pinboardtoggle.sh
fi