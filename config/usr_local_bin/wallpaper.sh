#!/bin/bash
# File Name: wallpaper.sh 
# Version: 1.2.6
# Purpose: gui to set wallpaper using feh for icewm, icewm with rox, fluxbox, fluxbox with rox
# Authors: Dave and minor modifications by anticapitalista
# Acknowledgements: Antix forum users for suggestions, testing, and input
# Special Acknowledgements: OU812, eriefisher for their testing, suggestions, input

# Copyright (C) Sunday, Feb. 5, 2011  by Dave / david.dejong02@gmail.com
# License: gplv2
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#################################################################################################################################################

function usage {
	echo "$0 [-ir|--icewm-rox] "
	echo "$0 {-h|--help}"
}

function help {
	echo "    -ir|--icewm-rox    select and apply rox background in icewm"
	echo "    -h|--help          display this help"
	echo
	exit
}

function start {
		ROXICE="Apply to Rox-Icewm"
		SLIM="Apply to SLiM Login"
		CHOOSE="Choose another Background Image"
		ans=$(zenity  --width 240 --height 280 --list  --title "Background Options" --text "Select " --radiolist\
            --column "" --column "Operation" \
            TRUE  "$ROXICE"\
            FALSE "$SLIM")
		#echo $ans
		case "$ans" in
		$ROXICE)
		rox_ice
        ;;
		$SLIM)
		gksu "wallpaper.sh -s" 
		;;
		*)
		esac    
		}
		
function rox_ice {
		cd $HOME/Wallpaper/
		BACKGROUND=`zenity --width 600 --height 500 --file-selection --title="Select a Background"`
		if [ $? = 0 ] ; then
		feh "$BACKGROUND" -d -g 320x240 &
		sleep 2 && zenity --question --text "Apply this background?"
		if [ $? = 0 ] ; then
		killall -15 feh
        Rox-Wallpaper "$BACKGROUND" && feh --bg-scale "$BACKGROUND" && cp "$BACKGROUND" ~/Wallpaper/bg.jpg && cp ~/.fehbg ~/.fehbgrox-ice && sed -i -e 's/fehbgice/fehbgrox-ice/g' ~/.icewm/startup && xrefresh 
        else
        killall -15 feh
        wallpaper.sh -ir
        fi
        else 
        wallpaper.sh
        fi
		}
		
function slim {
		cd $HOME/Wallpaper/
		BACKGROUND=`zenity --width 600 --height 500 --file-selection --title="Select a Background"`
		if [ $? = 0 ] ; then
        feh "$BACKGROUND" -d -g 320x240 &
		sleep 2 && zenity --question --text "Apply this background?"
		if [ $? = 0 ] ; then
		killall -15 feh
        cp -bv "$BACKGROUND" /usr/share/slim/themes/antiX/background.jpg
        else
        killall -15 feh
        wallpaper.sh -s
        fi
        else 
        wallpaper.sh
        fi
		}
        
 # Initializing variables
ROXICEWM=false
SLIMLOGIN=false
HELP=false
USAGE=false

for args; do
case "$1" in
		-ir|--icewm-rox) ROXICEWM=true;;
		-s|--slim) 	SLIMLOGIN=true;;
		-h|--help) 	HELP=true;;
		-u|--usage) 	USAGE=true;;
		--) 		shift; break;;
		-*) 		echo "Unrecognized option: $1"; ERROR=true;;
		*) 		break;;
	esac
shift
done

$ROXICEWM && {
	rox_ice
	exit
}

$SLIMLOGIN && {
	slim
	exit
}

$HELP && {
	help
	exit
}

$USAGE && {
	usage
	exit
}

# Execute if script is NOT called
start 
