#!/bin/bash
# Proper header for a Bash script.

# REPLACING FILES IN /usr/share/iceape
echo "Changing /usr/share/iceape"

# Disable IPv6 for more speed
echo "Replacing /usr/share/iceape/greprefs/all.js"
rm /usr/share/iceape/greprefs/all.js
cp $DIR_CONFIG/iceape/all.js /usr/share/iceape/greprefs
chown root:root /usr/share/iceape/greprefs/all.js

# Replace bookmarks
echo "Replacing /usr/share/iceape/defaults/profile/bookmarks.html"
rm /usr/share/iceape/defaults/profile/bookmarks.html
cp $DIR_CONFIG/iceape/bookmarks.html /usr/share/iceape/defaults/profile

echo "Replacing /home/(username)/.mozilla/seamonkey/*.default/bookmarks.html"
if [ -d "/home/$USERNAME" ]; then
    	rm /home/$USERNAME/.mozilla/seamonkey/*.default/bookmarks.html
	cp $DIR_CONFIG/iceape/bookmarks.html /home/$USERNAME/.mozilla/seamonkey/*.default
fi

if [ -d "/home/$USERNAME" ]; then
    	chown $USERNAME:users /usr/share/iceape/defaults/profile/bookmarks.html
	chown $USERNAME:users /home/$USERNAME/.mozilla/seamonkey/*.default/bookmarks.html
else
	chown demo:users /usr/share/iceape/defaults/profile/bookmarks.html
fi

# Do not switch to new tabs
# Open links meant to open a new window in a new tab instead
# Automatically remove private data upon closing the browser but offer the option to retain it
echo "Replacing /usr/share/iceape/defaults/pref/browser-prefs.js"
rm /usr/share/iceape/defaults/pref/browser-prefs.js
cp $DIR_CONFIG/iceape/browser-prefs.js /usr/share/iceape/defaults/pref
chown root:root /usr/share/iceape/defaults/pref/browser-prefs.js

# Block ads, those annoying speed bumps on the Information Superhighway
echo "Blocking ads, those annoying speed bumps on the Information Superhighway"
bash $DIR_SCRIPT/diet/block-advert.sh