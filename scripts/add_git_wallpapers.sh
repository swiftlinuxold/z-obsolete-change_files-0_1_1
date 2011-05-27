#!/bin/bash
# Proper header for a Bash script.

# This script adds git and downloads the wallpapers.
sh $DIR_SCRIPT/diet/change_apt.sh # Change Synaptic/Apt-Get settings.
apt-get install -y git-core git-doc
# Download the wallpapers if not already present
if [ ! -d $DIR_WALLPAPERS/.git ]; then
	mkdir $DIR_WALLPAPERS
	cd $DIR_WALLPAPERS
	git clone git://github.com/swiftlinux/wallpapers
fi