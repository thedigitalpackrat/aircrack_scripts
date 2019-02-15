#!/bin/bash
# Bash Menu Script Example
echo "aircrack-ng looks for ~/scans/scan-01.cap"
echo "Choose a wordlist"
read -n 1 -s -r -p "Press any key to continue"
select file in ~/wordlists/*.txt
do
    aircrack-ng -a 2 ~/scans/scan-01.cap -w $file 
break

done
