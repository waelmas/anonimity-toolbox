#!/usr/bin/env bash
printf "Your IP before torifying your shell:"
wget -qO - https://api.ipify.org; echo
source torsocks on; echo
printf "Your IP after torifying your shell:"
wget -qO - https://api.ipify.org; echo
printf "To turn off Tor mode run: $ source torsocks off"
printf "To make this effect permanent, run: $ ./tor/torify.sh"
