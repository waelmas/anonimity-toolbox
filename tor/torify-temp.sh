#!/usr/bin/env bash
echo "Your IP before torifying your shell:"
wget -qO - https://api.ipify.org; echo
source torsocks on; echo
echo "Your IP after torifying your shell:"
wget -qO - https://api.ipify.org; echo
echo "To turn off Tor mode run: $ source torsocks off"
echo "To make this effect permanent, run: $ ./tor/torify.sh"
