#!/bin/bash
# Proper header for a Bash script.

# This script adds git and downloads the wallpapers.
# Download the sounds if not already present
if [ ! -d $DIR_SOUNDS/.git ]; then
	mkdir $DIR_SOUNDS
	cd $DIR_SOUNDS
	git clone git://github.com/swiftlinux/sounds
fi