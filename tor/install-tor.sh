#!/usr/bin/env bash
sudo apt-get update
#sudo apt-get upgrade -y
sudo apt install tor -y
printf "Installed Tor Version:\n"
tor --version; echo 
printf "Your IP without Tor:"
wget -qO - https://api.ipify.org; echo
printf "Your IP through Tor:"
torsocks wget -qO - https://api.ipify.org; echo
printf "\n\n"
printf "To use Tor for a single shell command type 'torsocks' in front"
printf "Example: 'torsocks wget -qO - https://api.ipify.org; echo"


printf "Setting git to ignore filemode changes"
printf "(Avoids issues when fetching newer versions)"
git config core.filemode false


chmod +x $PWD/tor/torify-temp.sh
chmod +x $PWD/tor/torify.sh
chmod +x $PWD/tor/enable-control-port.sh
chmod +x $PWD/tor/renew-identity.sh
chmod +x $PWD/tor/get-current-ip.sh


printf "Run 'sudo ./tor/torify-temp.sh' to temporarily torify your shell"
printf "Run 'sudo ./tor/torify.sh' to permanently torify your shell and future shells"
printf "Run 'sudo ./tor/enable-control-port.sh' to enable Tor control port and be able to use the following"
printf "Run 'sudo ./tor/renew-identity.sh' to assume a new Tor identity"
printf "Run 'sudo ./tor/get-current-ip.sh' to get your current IP Address"