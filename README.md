# aircrack_scripts
Automated aircrack-ng scripts to scan, capture and test against wordlists.

wificap.sh will setup a wifi card to monitor and scan available networks.  It then shows a list of network BSSID and channels.  Once prompted to enter a target network airreplay.sh is launched in a separate window to force disconnects and allow the handshake capture.  Once the capture is complete aircrack.sh launches a dictionary attack from a chosen wordlist in ~/wordlists.  This was created and working with my Kali linux install.  The expected folders are the following:
~/scans
~/wordlists
