#!/usr/bin/env bash
printf "\nYour IP before torifying your shell:\n"
wget -qO - https://api.ipify.org; echo
source torsocks on; echo
printf "Your IP after torifying your shell:\n"
wget -qO - https://api.ipify.org; echo
printf "To turn off Tor mode run: $ source torsocks off\n"
printf "To make this effect permanent, run: $ ./tor/torify.sh\n"
