#!/bin/bash
# Proper header for a Bash script.

echo "Removing *.deb files from /var/cache/apt/archives"
rm /var/cache/apt/archives/*.deb

