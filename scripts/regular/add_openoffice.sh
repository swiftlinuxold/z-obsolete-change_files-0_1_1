#!/bin/bash
# Proper header for a Bash script.

# Add OpenOffice 2.4.1 (from Debian Lenny)
# OpenOffice Draw, Math, Impress, Calc, and Writer are included.
# OpenOffice version 2 is used because it is lightweight and only requires 128 MB of RAM.
# For newer versions, 256 MB of RAM is required and 512 MB is recommended.

# Due to the time needed for the big download and difficulties getting the needed packages
# through apt-get and Synaptic, the packages are included with this project for quicker
# and more reliable access.

# The packages are divided into 5 groups.  All packages needed for a given group are part
# of the previous group.

# The libneon27 package is the Debian Wheezy version.  
# All other packages are from Debian Lenny.

dpkg -i $DIR_OO/group1/*.deb
dpkg -i $DIR_OO/group2/*.deb
dpkg -i $DIR_OO/group3/*.deb
dpkg -i $DIR_OO/group4/*.deb
dpkg -i $DIR_OO/group5/*.deb