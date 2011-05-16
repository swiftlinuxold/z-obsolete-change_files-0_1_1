# MODIFIED FOR SWIFT LINUX
# File Name: controlcenter.sh
# Purpose: all-in-one control centre for antiX
# Authors: OU812 and minor modifications by anticapitalista
# Latest Change: 20 August 2008
# Latest Change: 11 January 2009 and renamed antixcc.sh
# Latest Change: 15 August 2009 some apps and labels altered.
# Acknowledgements: Original script by KDulcimer of TinyMe. http://tinyme.mypclinuxos.com
#################################################################################################################################################

#!/bin/sh

export ControlCenter='
<window title="Swift Linux Control Center" icon="gnome-control-center" window-position="1">
<vbox>
  
  <notebook labels="Desktop|System|Network|Session|Disks|Hardware">
  
  <vbox>
  <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/background.png"</input>
		  <action>wallpaper.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Choose Wallpaper"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/gnome-monitor.png"</input>
		  <action>geany ~/.conkyrc  &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Edit System Monitor"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/preferences-desktop-theme.png"</input>
		  <action>lxappearance &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Change Gtk2 and Icon Themes"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/wmtweaks.png"</input>
		  <action>geany ~/.icewm/winoptions ~/.icewm/preferences ~/.icewm/keys ~/.icewm/startup ~/.icewm/toolbar ~/.icewm/menu &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Edit IceWM Settings"</label>
		  </text>
		</hbox>
		<hbox>
	         <button>
	         <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/cursor-theme.png"</input>
	         <action>rxvt-unicode -tr -sh 65 -fg white -T "cursor theme" -e su -c "update-alternatives --config x-cursor-theme" &</action>
                 <action>zenity --title "Mouse Options" --info --text "After choosing a new theme, please\n logout/login to see the changes." &</action>
	         </button>
	         <text use-markup="true" width-chars="25">
	         <label>"Change cursor theme"</label>
	         </text>
                </hbox>
	  </vbox>
	</hbox>
    </frame>
  </vbox>
	
  <vbox>
	<frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/system-installer.png"</input>
		  <action>gksu synaptic &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Manage Packages"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/categories/preferences-system.png"</input>
		  <action>gksu antix-system &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Configure System"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/services.png"</input>
		  <action>roxterm -e su -c sysv-rc-conf &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Choose Startup Services"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/config-users.png"</input>
		  <action>gksu user-management &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Manage Users"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/categories/gnome-applications.png"</input>
		  <action>gksu "geany /etc/fstab /etc/default/keyboard /etc/X11/xorg.conf /boot/grub/menu.lst /etc/slim.conf /etc/apt/sources.list" &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Edit Config Files"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/config-date.png"</input>
		  <action>roxterm -e su -c "dpkg-reconfigure tzdata" &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Set Date and Time"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
	<frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/status/connect_creating.png"</input>
		  <action>roxterm -e ceniwrapper &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Network Interfaces (ceni)"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/network-wired.png"</input>
		  <action>umts-panel &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Configure GPRS/UMTS Connection"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/pixmaps/wicd_32x32.png"</input>
		  <action>wicd-gtk &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Connect Wirelessly (wicd)"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/network-wireless.png"</input>
		  <action>gksu rutilt &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Wireless (rutilt)"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/network-wired.png"</input>
		  <action>gnome-ppp &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Configure Dial-Up Connection"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/firewall.png"</input>
		  <action>gksu gufw &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Manage Firewall"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
    <frame>
	<hbox>
	  <vbox>
                <hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/preferences-desktop-keyboard.png"</input>
		  <action>antixcckeyboard.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Change Keyboard Layout"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/gdm.png"</input>
		  <action>gksu antixccslim.sh</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Change Slim Background"</label>
		  </text>
 		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/display-capplet.png"</input>
		  <action>gksu grandr &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Set Screen Resolution"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/xfce4-splash.png"</input>
		  <action>leafpad ~/.xinitrc &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Edit Login Options"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/gdm.png"</input>
		  <action>gksu slim-login &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Set auto-login"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
    </frame>
  </vbox>
  
  <vbox>
     <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/drive-harddisk.png"</input>
		  <action>gksu gparted &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Partition a Drive"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/drive-removable-media.png"</input>
		  <action>gksu mountbox &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Mount Connected Devices"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/file-roller.png"</input>
		  <action>gksu luckybackup &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Backup Your System"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/actions/document-save.png"</input>
		  <action>roxterm -e su -c partimage &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Image a Partition"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/system-software-update.png"</input>
		  <action>grsync &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Synchronize Directories"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/accessories-archiver.png"</input>
		  <action>gksu antix2usb-gui.py &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"antiX2usb"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
    <frame>
	<hbox>
	  <vbox>
                <hbox>
                  <button>
                  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/computer.png"</input>
                  <action>hardinfo &</action>
                  </button>
                  <text use-markup="true" width-chars="25">
                  <label>"System Information"</label>
                  </text>
                 </hbox>		
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/actions/stock_print-setup.png"</input>
		  <action>system-config-printer &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Setup a Printer"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/apps/gnome-settings-sound.png"</input>
		  <action>roxterm -e su -c alsaconf &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Configure Sound System"</label>
		  </text>
		</hbox>
	  </vbox>
	  <vbox>
                <hbox>
                  <button>
                  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/computer.png"</input>
                  <action>inxi-gui &</action>
                  </button>
                  <text use-markup="true" width-chars="25">
                  <label>"PC Information"</label>
                  </text>
                </hbox>
                <hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/devices/mouse.png"</input>
		  <action>antixccmouse.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Configure Mouse"</label>
		  </text>
		</hbox>
                 <hbox>
		  <button>
		  <input file>"/usr/share/icons/gTangish-2.0a1/32x32/status/audio-volume-high.png"</input>
		  <action>roxterm -e alsamixer &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"Adjust Mixer"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
	</frame>
  </vbox>
  </notebook>

  <hbox>
	<button>
	<label>"Close"</label>
	<input file>"/usr/share/icons/gTangish-2.0a1/16x16/actions/dialog-cancel.png"</input>
	<action>EXIT:close</action>
	</button>
  </hbox>
</vbox>
</window>
'

gtkdialog --program=ControlCenter
unset ControlCenter
