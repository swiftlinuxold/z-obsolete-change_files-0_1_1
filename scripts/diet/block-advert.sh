#!/bin/bash

# MODIFIED FOR PRE-INSTALLATION IN SWIFT LINUX
# This script is used for preactivating the Ad Blocking capability.
# The command is "bash block-advert.sh"

#v0.4 created by sc0ttman, August 2010
#GPL license /usr/share/doc/legal/gpl-2.0.txt
#100830 BK added GPL license, amended Exit msg, bug fixes.
# zenity version by lagopus for antiX, Decemder 2010

# advert blocker
# downloads a list of known advert servers
# then appends them to /etc/hosts so that
# many online adverts are blocked from sight

export title="antiX Advert Blocker"

# the markers used to find the changes in /etc/hosts, which are made by this app
export markerstart='# pup-advert-blocker IPs below'
export markerend='# pup-advert-blocker IPs above'

info_text="The <b>$title</b> tool adds stuff to your \"/etc/hosts\" file, so \
that many advertising servers and websites will not be able to connect \
to this PC.\n\n\
You can choose one service or combine multiple services for more advert protection.\n\
Blocking ad servers protects your privacy, saves you bandwidth, greatly \
improves web-browsing speed and makes the internet much less annoying in general.\n\n\
Do you want to proceed?"

# width of progress dialogs
WIDTH=360

# cleanup all leftover files
function cleanup
{
    # remove all temp files
    rm -f /tmp/adlist{1,2,3,4} /tmp/adlist-all /tmp/hosts-temp
}

# concatenate the downloaded files
# clean out everything but the list of IPs and servers
function build_adlist_all
{
    #echo "====================YTO"
    # suppress comments, then empty lines, replace tabs by spaces
    # remove double spaces, remove lines not beginning by a number,
    # suppress \r at end of line
    # then sort unique by field 2 (url)
    cat /tmp/adlist{1,2,3,4} | sed '/^#/d' | \
                               sed '/^$/d' | \
                               sed 's/[\t]/ /g' | \
                               sed 's/  / /g' | \
                               sed -n '/^[0-9]/p' | \
                               tr -d '\015' | \
                               sort -u -k 2 \
                               > /tmp/adlist-all
    #echo "====================YTO"
}


# append the list to the /etc/hosts
function append_adlist
{
	# copy /etc/hosts, but the stuff between the markers, to a temp hosts file
	sed -e "/$markerstart/,/$markerend/d" /etc/hosts > /tmp/hosts-temp
	# remove the markers
	sed -i -e "/$markerstart/d" /tmp/hosts-temp
	sed -i -e "/$markerend/d"   /tmp/hosts-temp
    
	# check the size of the final adlist
    size=$(stat -c%s /tmp/adlist-all 2>/dev/null)
    #echo $size
	if [ -n "$size" ] && [ "$size" -gt "0" ];then
		# add list contents into the hosts file, below a marker (for easier removal)
		echo "$markerstart" >> /tmp/hosts-temp
		cat /tmp/adlist-all >> /tmp/hosts-temp
		echo "$markerend"   >> /tmp/hosts-temp
	else
		zenity --info --title "$title" --text "Empty ad list. No change made in /etc/hosts."
        exit 1
	fi
	# replace the original /etc/hosts with the new version
    # require root privilege
    gksu -D "$title" mv "/tmp/hosts-temp" "/etc/hosts"
}


# usage: wget_dialog url file
# $1 : url of the file
# $2 : file: location of the downloaded file
function wget_dialog
{
    #echo "url: [$1]"
    url=$1
    # extract domain name between // and /
    domain=$(echo "$url" | cut -d/ -f3)
    #echo "===> $domain"
    
    # '--progress=dot' prints dots and a percentage at the end of the line
    # print $7 to cut the percentage
    # system("") to flush the output of awk in the pipe
    # sed to delete the ending '%' sign
    # sed -u to flush the output of sed
    # changed -t 0 (tries) to -t 20
    wget -c -4 -t 20 -T 10 --progress=dot -O $2 "$1" 2>&1 | \
        awk '{print $7}; system("")' | sed -u 's/%//' | \
        zenity --title "$title" --progress --width $WIDTH \
               --text "Loading  adlist from $domain" \
               --percentage=0 \
               --auto-close
}

# download the ads lists
function download_adlist
{
    # mvps
    if [ "$mvps" = true ]; then
        wget_dialog http://www.mvps.org/winhelp2002/hosts.txt /tmp/adlist1
    fi
    # systcl
    if [ "$sysctl" = true ]; then
        wget_dialog http://sysctl.org/cameleon/hosts /tmp/adlist2
    fi
    # technobeta
    if [ "$technobeta" = true ]; then
        wget_dialog 'http://www.technobeta.com/download/urlfilter.ini' /tmp/adlist3
    fi
    # yoyo
    if [ "$yoyo" = true ]; then
        wget_dialog 'http://pgl.yoyo.org/as/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext' /tmp/adlist4
    fi

    #100830 BK bug fix: create if not exist...
    touch /tmp/adlist{1,2,3,4} 
}


function success
{
	# tell user 
	# zenity --info --title "$title" --text "Success - your settings have been changed.\n\n\
# Your hosts file has been updated.\n\
# Restart your browser to see the changes."
	echo "Success - Block Advert updated your hosts file."
}

#=======================================================================
# main
#

# display message and ask to continue
# zenity --title "$title" --width "$WIDTH" --question --text "$info_text"
# rsp=$?

# if [ $rsp != 0 ]; then
#    exit 0
# fi
echo "Beginning Advert Blocker"

# selection dialog
# ans=$(zenity --title "$title" \
#             --width "$WIDTH" --height 220 \
#             --list --separator=":" \
#             --text "Choose your preferred ad blocking service(s)" \
#             --checklist  --column "Pick" --column "Service"\
#             FALSE "mvps.org" \
#             FALSE "sysctl.org" \
#             FALSE "technobeta.com" \
#             FALSE "yoyo.org")

#echo $ans
export ans="mvps.org:sysctl.org:technobeta.com:yoyo.org"

# transform the list separated by ':' into arr
arr=$(echo $ans | tr ":" "\n")

selected=""
for x in $arr
do
    #echo "> [$x]"
    case $x in
    mvps.org)
        mvps='true'
        selected='yes'
        ;;
    sysctl.org)
        sysctl='true'
        selected='yes'
        ;;
    technobeta.com)
        technobeta='true'
        selected='yes'
        ;;
    yoyo.org)
        yoyo='true'
        selected='yes'
        ;;
    esac    
done

if [ -z $selected ]; then
    # nothing selected
    echo "No item selected"
    exit 0
fi

cleanup
download_adlist
build_adlist_all
append_adlist
cleanup
success
