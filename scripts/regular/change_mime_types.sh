#!/bin/bash
# Proper header for a Bash script.

# Changing MIME-types (file associations)
# Changing spreadsheet and word processing file associations

echo "Changing Bittorrent file association"
# If /home/$USERNAME exists, change the file associations in this directory.
if [ -d "/home/$USERNAME" ]; then

    	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_msword 
	cp $DIR_CONFIG/MIME-types/application_msword /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_msword

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel 
	cp $DIR_CONFIG/MIME-types/application_vnd.ms-excel /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet 
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.spreadsheet /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text 
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.text /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
	cp $DIR_CONFIG/MIME-types/application_vnd.ms-powerpoint /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.presentation /home/$USERNAME/.config/rox.sourceforge.net/MIME-types
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation

fi

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_msword
cp $DIR_CONFIG/MIME-types/application_msword /etc/skel/.config/rox.sourceforge.net/MIME-types/
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_msword

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel
cp $DIR_CONFIG/MIME-types/application_vnd.ms-excel /etc/skel/.config/rox.sourceforge.net/MIME-types/
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.spreadsheet /etc/skel/.config/rox.sourceforge.net/MIME-types/
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.text /etc/skel/.config/rox.sourceforge.net/MIME-types/
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
cp $DIR_CONFIG/MIME-types/application_vnd.ms-powerpoint /etc/skel/.config/rox.sourceforge.net/MIME-types
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.presentation /etc/skel/.config/rox.sourceforge.net/MIME-types
chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation

