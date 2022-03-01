#!/usr/bin/env bash
source torsocks off
printf "\nProvide the Tor control-port password:\n"
read torpassraw
sudo echo -e "AUTHENTICATE \"$torpassraw\"\r\nSIGNAL NEWNYM\r\nSIGNAL CLEARDNSCACHE\r\nQUIT" | sudo nc 127.0.0.1 9051
source torsocks on