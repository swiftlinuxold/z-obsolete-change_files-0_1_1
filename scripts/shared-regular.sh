#!/bin/bash
# Proper header for a Bash script.

sh $DIR_SCRIPT/shared-diet.sh # antiX Linux to Diet Swift Linux
sh $DIR_SCRIPT/regular/add_forensic.sh # Add forensic packages
sh $DIR_SCRIPT/regular/add_openoffice.sh # Change Synaptic/Apt-Get settings.
sh $DIR_SCRIPT/regular/change_conky.sh # Change Conky
sh $DIR_SCRIPT/regular/change_rox.sh # Change ROX background
sh $DIR_SCRIPT/regular/change_icewm.sh # Change IceWM settings
sh $DIR_SCRIPT/regular/change_mime_types.sh # Change MIME types (file associations)
sh $DIR_SCRIPT/remove_languages.sh # Remove excess languages
sh $DIR_SCRIPT/remove_deb.sh # Remove *.deb files from /var/cache/apt/archives