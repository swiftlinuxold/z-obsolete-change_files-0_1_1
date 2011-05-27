#!/bin/bash
# Proper header for a Bash script.

# This is the script for transforming antiX Linux to Diet Swift Linux.

# Check for root user login
if [ ! $( id -u ) -eq 0 ]; then
	echo "You must be root to run this script."
	echo "Please enter su before running this script again."
	exit
fi

echo "Go to the VirtualBox menu, select Devices -> CD/DVD Devices,"
echo "and select the antiX Linux ISO."
echo "This mounts the virtual antiX Linux CD."
		
echo "Press Enter when you are finished." 
read CD

export USERNAME=$(logname)
export DIR_SCRIPT=$(pwd)
cd ..
export DIR_CF=$(pwd)
cd ..
export DIR_DEVELOP=$(pwd)
export DIR_CONFIG=$DIR_CF/config
export DIR_HELP=$DIR_CF/help

export DIR_WALLPAPERS=$DIR_DEVELOP/wallpapers

cd $DIR_SCRIPT
sh add_git_wallpapers.sh

cd $DIR_SCRIPT
bash remaster-diet.sh