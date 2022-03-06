# Privacy Toolbox Project


Current status: Work In Progress










### Recommended: Install a no-log VPN and connect first

An audited no-log VPN that accepts direct crypto payments:
https://www.privateinternetaccess.com/download

When registering you can use a temporary email to get the credentials upon payment
(Remember to change the password once you get the credentials)
You can use https://temp-mail.org/en


Free VPN (**NOT** for security/anonimity but rather for bypassing censorship):
https://protonvpn.com/


<br/>

## Clone this repo:
    git clone https://github.com/waelmas/anonimity-toolbox.git && cd anonimity-toolbox


<br/>

## Setup Tor Proxy

Install tor:

    chmod +x ./tor/install-tor.sh && sudo ./tor/install-tor.sh


Torify shell for the current session:

    sudo ./tor/torify-temp.sh


Torify permanently (all future shells after reboot):

    sudo ./tor/torify.sh


Setup control-port for Tor (to be able to request new identities):

    ./tor/enable-control-port.sh


Request new Tor identity:

    source torsocks off && ./tor/renew-identity.sh


Get current Tor identity:

    ./tor/get-current-tor-identity.sh


Get your current IP Address:

    ./tor/get-current-ip.sh

<br/>


## To set your browser to use tor as a proxy:

Go to **Settings** >> **Network Settings**

Choose "**Manual Proxy Configuration**"

Set the field "**SOCKS Host**" to **`localhost`**

Set the field "**Port**" to **`9501`**

Visit https://ipchicken.com/ to verify that Name Address is a **Tor exit node**



