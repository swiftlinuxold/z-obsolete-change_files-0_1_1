#!/bin/bash
# Proper header for a Bash script.

# Configure BleachBit
bleachbit_cli # Creates /root/.config/bleachbit/bleachbit.ini file
rm /root/.config/bleachbit/bleachbit.ini
cp $DIR_CONFIG/bleachbit/bleachbit.ini /root/.config/bleachbit

# Remove all languages other than English (over 200MB on hard drive)
bleachbit_cli --preset -d