#!/bin/bash
# Proper header for a Bash script.

# Changing MIME-types (file associations)
# Changing spreadsheet and word processing file associations

echo "Changing Bittorrent file association"
# If /home/$USERNAME exists, change the file associations in this directory.
if [ -d "/home/$USERNAME" ]; then

    	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_msword 
	cp $DIR_CONFIG/MIME-types/application_msword /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel 
	cp $DIR_CONFIG/MIME-types/application_vnd.ms-excel /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet 
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.spreadsheet /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text 
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.text /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
	cp $DIR_CONFIG/MIME-types/application_vnd.ms-powerpoint /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

	rm /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
	cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.presentation /home/$USERNAME/.config/rox.sourceforge.net/MIME-types

fi

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_msword
cp $DIR_CONFIG/MIME-types/application_msword /etc/skel/.config/rox.sourceforge.net/MIME-types/

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel
cp $DIR_CONFIG/MIME-types/application_vnd.ms-excel /etc/skel/.config/rox.sourceforge.net/MIME-types/

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.spreadsheet /etc/skel/.config/rox.sourceforge.net/MIME-types/

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.text /etc/skel/.config/rox.sourceforge.net/MIME-types/

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
cp $DIR_CONFIG/MIME-types/application_vnd.ms-powerpoint /etc/skel/.config/rox.sourceforge.net/MIME-types

rm /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
cp $DIR_CONFIG/MIME-types/application_vnd.oasis.opendocument.presentation /etc/skel/.config/rox.sourceforge.net/MIME-types

if [ -d "/home/$USERNAME" ]; then
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_msword    	
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
	chown $USERNAME:users /home/$USERNAME/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_msword
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
	chown $USERNAME:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
else
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_msword
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-excel
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.spreadsheet
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.text
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.ms-powerpoint
	chown demo:users /etc/skel/.config/rox.sourceforge.net/MIME-types/application_vnd.oasis.opendocument.presentation
fi

