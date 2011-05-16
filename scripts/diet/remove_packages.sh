#!/bin/bash
# Proper header for a Bash script.

# Remove databases
apt-get remove -y --purge mysql-common

# Remove editors
apt-get remove -y --purge nano vim vim-common vim-runtime wordgrinder

# Remove email programs
apt-get remove -y --purge alpine

# Remove excess Icape programs
apt-get remove -y --purge iceape iceape-chatzilla iceape-mailnews

# Remove fonts
apt-get remove -y --purge  ttf-unfonts-core

# Remove cheese
apt-get remove -y --purge cheese cheese-common

# Remove games
apt-get remove -y --purge gweled lbreakout2 lbreakout2-data njam xmahjongg

# Remove mathematical
apt-get remove -y --purge bc

# Remove misc. graphical
apt-get remove -y --purge dwm dwm-tools fluxbox gtk2-engines-pixbuf gtk2-engines-murrine
apt-get remove -y --purge rxvt-unicode ttf-arphic-uming wmctrl wmii wmii-doc
apt-get remove -y --purge xfonts-intl-asian xfonts-intl-european xfonts-intl-japanese 
apt-get remove -y --purge xsw xterm zim

# Remove multimedia
apt-get remove -y --purge ripit

# Remove networking
apt-get remove -y --purge irssi libpurple0 newsbeuter openssh-server pidgin pidgin-data 

# Remove unknown category
apt-get remove -y --purge ted

# Remove utilities
apt-get remove -y --purge anthy-common calcurse mc

# Remove web server
apt-get remove -y --purge cherokee libcherokee-base0 libcherokee-client0
apt-get remove -y --purge libcherokee-config0 libcherokee-mod-admin libcherokee-server0

# Remove word processing
apt-get remove -y --purge apvlv 
apt-get remove -y --purge myspell-ca myspell-de-de myspell-el-gr myspell-es myspell-fr
apt-get remove -y --purge myspell-nl myspell-pl myspell-pt-br myspell-ru

# Remove world wide web
apt-get remove -y --purge elinks-lite html2text links2 

# Remove extra torrent programs
apt-get remove -y --purge bittorrent libtorrent13 rtorrent

apt-get autoremove -y --purge

echo "Deleting /usr/share/fluxbox\n"
rm -r /usr/share/fluxbox