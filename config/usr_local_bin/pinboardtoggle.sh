# Filename:      pinboardtoggle.sh
# Purpose:       toggle Rox pinboard on/off from menu
# Authors:       Kerry and anticapitalista for antiX
# Latest change: Tuesday January 26, 2010.
################################################################################

#!/bin/sh

APP_DIR=`dirname "$0"` export APP_DIR

if [ -f "/tmp/ROX_PANEL_VISIBLE" ]
then
  rm "/tmp/ROX_PANEL_VISIBLE"
  exec rox -p=
else  
  touch "/tmp/ROX_PANEL_VISIBLE"
  exec rox -p=swift
fi
