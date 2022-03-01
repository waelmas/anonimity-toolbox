#!/usr/bin/env bash
source torsocks off
echo "Provide the Tor control-port password:"
read torpassraw
sudo echo -e "AUTHENTICATE '${torpassraw}'\r\nSIAGNAL NEWNYM\r\nSIGNAL CLEARDNSCACHE\r\nQUIT" | sudo nc 127.0.0.1 9051
source torsocks on