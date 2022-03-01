#!/usr/bin/env bash

printf "\n\nBEFORE Running: source torsocks off\n\n"

printf "\n\nEnter a password for Tor Control-port:\n"
read torpassraw

torpass=$(tor --hash-password "${torpassraw}")
echo "${torpassraw}"
echo ""${torpassraw}""

printf "\nHashedControlPassword $torpass\nControlPort 9051\n" | sudo tee -a /etc/tor/torrc

tail -2 /etc/tor/torrc; echo

sudo systemctl restart tor; echo

sleep 2

printf "\nVerify that below tor-control-port is running on '127.0.0.1:9051' "

ss -ntl; echo