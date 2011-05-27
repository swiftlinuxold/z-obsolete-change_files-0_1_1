#!/bin/bash
# Proper header for a Bash script.

# This is the script for transforming antiX Linux to Regular Swift Linux.

# Check for root user login
if [ ! $( id -u ) -eq 0 ]; then
	echo "You must be root to run this script."
	echo "Please enter su before running this script again."
	exit
fi

# Set the directory names
export USERNAME=$(logname)
export DIR_SCRIPT=$(pwd)
cd ..
export DIR_CF=$(pwd)
cd ..
export DIR_DEVELOP=$(pwd)
export DIR_CONFIG=$DIR_CF/config
export DIR_HELP=$DIR_CF/help

export DIR_WALLPAPERS=$DIR_DEVELOP/wallpapers
export DIR_OO=$DIR_DEVELOP/openoffice
export DIR_SOUNDS=$DIR_DEVELOP/sounds

# Add the wallpapers
cd $DIR_SCRIPT
sh add_git_wallpapers.sh

# Add the OpenOffice repository
cd $DIR_SCRIPT
sh add_openoffice_dir.sh

# antiX Linux to Regular Swift Linux
cd $DIR_SCRIPT
sh shared-regular.sh