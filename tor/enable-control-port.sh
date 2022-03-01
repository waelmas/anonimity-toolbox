#!/usr/bin/env bash
source torsocks off

echo "Enter a password for Tor Control-port:"
read torpassraw

torpass=$(tor --hash-password "${torpassraw}")

printf "HashedControlPassword $torpass\nControlPort 9051\n" | sudo tee -a /etc/tor/torrc

tail -2 /etc/tor/torrc; echo

sudo systemctl restart tor; echo

echo "Verify that below tor-control-port is running on '127.0.0.1:9051' "

ss -ntl; echo