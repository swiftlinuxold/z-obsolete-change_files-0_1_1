#!/bin/bash
# Proper header for a Bash script.

# REPLACING FILES IN /etc/apt
# 

# Include Debian Squeeze and Lenny
echo "Replacing /etc/apt/sources.list"

rm /etc/apt/sources.list
cp $DIR_CONFIG/apt/sources.list /etc/apt
chown root:root /etc/apt/sources.list

# Install only required packages, not recommended ones
# Defaults to Debian Squeeze
echo "Replacing /etc/apt/apt.conf"
rm /etc/apt/apt.conf
cp $DIR_CONFIG/apt/apt.conf /etc/apt/
chown root:root /etc/apt/apt.conf

# Favor Debian Squeeze over Debian Lenny
echo "Replacing /etc/apt/preferences"
rm /etc/apt/preferences
cp $DIR_CONFIG/apt/preferences /etc/apt
chown root:root /etc/apt/preferences

# Update apt-get
apt-get update

