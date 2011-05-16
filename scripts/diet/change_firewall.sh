#!/bin/bash
# Proper header for a Bash script.

# CHANGING UFW CONFIGURATION

echo "Setting firewall to be activated by default"
rm /etc/ufw/ufw.conf
cp $DIR_CONFIG/firewall/ufw.conf /etc/ufw/ufw.conf
chown root:root /etc/ufw/ufw.conf