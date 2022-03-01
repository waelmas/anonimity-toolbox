#!/usr/bin/env bash
printf "Your current IP:\n"
torsocks wget -qO - https://api.ipify.org; echo

