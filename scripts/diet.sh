#!/bin/bash
# Proper header for a Bash script.

# This is the script for transforming antiX Linux to Diet Swift Linux.

export USERNAME=$(logname)
export DIR_SCRIPT=$(pwd)
cd ..
export DIR_DEVELOP=$(pwd)
cd config
export DIR_CONFIG=$(pwd)
cd ..
cd help
export DIR_HELP=$(pwd)
cd $DIR_SCRIPT

su -c "sh diet_root.sh"