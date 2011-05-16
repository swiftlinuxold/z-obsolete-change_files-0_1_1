#!/bin/bash
# Proper header for a Bash script.

sh $DIR_SCRIPT/diet/change_apt.sh # Change Synaptic/Apt-Get settings.
sh $DIR_SCRIPT/diet/add_help.sh # Add help pages
sh $DIR_SCRIPT/diet/change_iceape.sh # Change IceApe settings.
sh $DIR_SCRIPT/diet/remove_themes.sh # Remove excess themes.
sh $DIR_SCRIPT/diet/change_wallpaper.sh # Change wallpaper.
sh $DIR_SCRIPT/diet/change_slim.sh # Change SLiM settings and wallpaper.
sh $DIR_SCRIPT/diet/change_conky.sh # Change Conky
sh $DIR_SCRIPT/diet/change_rox.sh # Change ROX Pinboard (desktop configuration)
sh $DIR_SCRIPT/diet/change_icewm.sh # Change IceWM settings.
sh $DIR_SCRIPT/diet/change_firewall.sh # Change firewall settings
sh $DIR_SCRIPT/diet/change_antixcc.sh # Change antiX Control Center
sh $DIR_SCRIPT/diet/add_startup.sh # Add the script to automatically run at startup
sh $DIR_SCRIPT/diet/change_mime_types.sh # Change the MIME types
sh $DIR_SCRIPT/diet/remove_packages.sh # Remove excess packages
sh $DIR_SCRIPT/diet/add_bleachbit.sh # Add BleachBit
sh $DIR_SCRIPT/remove_languages.sh # Remove excess languages
sh $DIR_SCRIPT/remove_deb.sh # Remove *.deb files from /var/cache/apt/archives