#!/bin/bash
# Proper header for a Bash script.

# This script downloads the OpenOffice directory.

# Downloads the OpenOffice directory if not already present
if [ ! -d $DIR_OO/.git ]; then
	mkdir $DIR_OO
	cd $DIR_OO
	git clone git://github.com/swiftlinux/openoffice
fi