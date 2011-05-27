#!/bin/bash
# Proper header for a Bash script.

# Remove databases (and dependent programs)
apt-get remove -y --purge mysql-common libmysqlclient16 
apt-get remove -y --purge libcherokee-server0 cherokee libcherokee-config0
apt-get remove -y --purge libcherokee-mod-admin

# Remove web server
apt-get remove -y --purge libcherokee-base0 libcherokee-client0
apt-get remove -y --purge libcherokee-config0 libcherokee-server0

# Remove editors
apt-get remove -y --purge nano vim vim-common vim-runtime wordgrinder

# Remove email programs
apt-get remove -y --purge alpine

# Remove excess Icape programs
apt-get remove -y --purge iceape iceape-chatzilla iceape-mailnews

# Remove cheese
apt-get remove -y --purge cheese cheese-common libcheese-gtk18

# Remove development (and dependent programs)
apt-get remove -y --purge gettext intltool-debian po-debconf

# Remove fonts
apt-get remove -y --purge ttf-arphic-uming ttf-sazanami-mincho ttf-unfonts-core 
apt-get remove -y --purge xfonts-intl-asian xfonts-intl-japanese

# Remove games
apt-get remove -y --purge gweled lbreakout2 lbreakout2-data njam xmahjongg

# Remove misc. graphical (and dependent programs)
apt-get remove -y --purge dwm dwm-tools wmii wmii-doc 
apt-get remove -y --purge fluxbox gtk2-engines-pixbuf gtk2-engines-murrine

apt-get remove -y --purge xsw zim

# Remove multimedia
apt-get remove -y --purge ripit moc abcde cd-discid mp3gain sox streamripper wavpack

# Remove networking
apt-get remove -y --purge irssi libpurple0 newsbeuter openssh-server pidgin pidgin-data 
apt-get remove -y --purge libgadu libzephyr4

# Remove unknown category
apt-get remove -y --purge ted

# Remove utilities (and dependent programs)
apt-get remove -y --purge anthy-common libanthy0 libm17n-0 ibus-m17n
apt-get remove -y --purge m17n-contrib m17n-db
apt-get remove -y --purge calcurse mc

# Remove video players
apt-get remove -y --purge imagination imagination-common winff winff-doc

# Remove word processing
apt-get remove -y --purge apvlv 
apt-get remove -y --purge myspell-ca myspell-de-de myspell-el-gr myspell-es myspell-fr
apt-get remove -y --purge libhunspell-1.2-0 libhunspell-1.2-0
apt-get remove -y --purge myspell-nl myspell-pl myspell-pt-br myspell-ru

# Remove world wide web
apt-get remove -y --purge elinks-lite html2text links2 

# Remove extra torrent programs (and dependent programs)
apt-get remove -y --purge bittorrent libtorrent13 rtorrent

# apt-get autoremove -y --purge

echo "Deleting /usr/share/fluxbox\n"
rm -r /usr/share/fluxbox