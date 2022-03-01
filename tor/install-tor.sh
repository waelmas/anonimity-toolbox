#!/usr/bin/env bash
sudo apt-get update
#sudo apt-get upgrade -y
sudo apt install tor -y
echo "Installed Tor Version:\n"
tor --version; echo 
echo "Your IP without Tor:"
wget -qO - https://api.ipify.org; echo
echo "Your IP through Tor:"
torsocks wget -qO - https://api.ipify.org; echo
echo "\n\n"
echo "To use Tor for a single shell command type 'torsocks' in front"
echo "Example: 'torsocks wget -qO - https://api.ipify.org; echo"

chmod +x $PWD/tor/torify-temp.sh
chmod +x $PWD/tor/torify.sh
chmod +x $PWD/tor/enable-control-port.sh
chmod +x $PWD/tor/renew-identity.sh
chmod +x $PWD/tor/get-current-ip.sh


echo "Run 'sudo ./tor/torify-temp.sh' to temporarily torify your shell"
echo "Run 'sudo ./tor/torify.sh' to permanently torify your shell and future shells"
echo "Run 'sudo ./tor/enable-control-port.sh' to enable Tor control port and be able to use the following"
echo "Run 'sudo ./tor/renew-identity.sh' to assume a new Tor identity"
echo "Run 'sudo ./tor/get-current-ip.sh' to get your current IP Address"