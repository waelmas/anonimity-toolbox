# Privacy Toolbox Project


Current status: Work In Progress

<br/>

## Steps for Tor-over-VPN: (You -> VPN -> Tor -> Target)

1) First connect to a VPN <br/>
2) Connect to Tor network


This approach hides from your Internet Service Provider (ISP) the fact that you are using Tor, as using Tor is usually more suspicious than using a VPN which is very common nowadays.

More information on the benefits of this approach especially when using a strong audited no-log VPN provider <br/>
(Meaning you trust them more than your Internet Service Provider): <br/>
https://www.1337pwn.com/which-is-better-tor-over-vpn-or-vpn-over-tor/

<br/>

## Connect to a no-log VPN (Step 1)

An audited no-log VPN that accepts direct crypto payments:<br/>
https://www.privateinternetaccess.com/download

It also has a nice feature called "Multi-hop and Obfuscation" which hides the fact that you are using a VPN.

<br/>

When registering you can use a temporary email to get the credentials upon payment <br/>
(Remember to change the password once you get the credentials)<br/>
You can use:<br/>
https://temp-mail.org/en


<br/>

Free VPN (**NOT** for security/anonimity but rather for bypassing censorship):<br/>
https://protonvpn.com/


<br/>

## Setup Tor Proxy (Step 2)

Clone this repo:

    git clone https://github.com/waelmas/anonimity-toolbox.git && cd anonimity-toolbox

Install tor:

    chmod +x ./tor/install-tor.sh && sudo ./tor/install-tor.sh


Start Tor:

    sudo systemctl start tor


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

It's **recommended** that you use [**Tor Browser**](https://www.torproject.org/download/) but if you need to route traffic of Chrome/Firefox then follow the below steps:

Go to **Settings** >> **Network Settings**

Choose "**Manual Proxy Configuration**"

Set the field "**SOCKS Host**" to **`localhost`**

Set the field "**Port**" to **`9500`**



<br/>



## Verify that everything works properly:

**Browser approach:** (Assuming you are using Tor Browser or you have followed the above steps to connect your browser to TorSocks)

Visit https://ipchicken.com/ you should expect that the Name Address is a **Tor exit node**


**Shell approach**

To get simply the IP Address (**IPV4**):

    wget -qO - https://api.ipify.org; echo
    
If the above returns nothing, then probably you are behind an **IPV6** address (Used by some Tor nodes):

    wget -qO - https://api64.ipify.org; echo

To get the **Name Address** (from ipchicken.com):

    wget -qO - https://ipchicken.com |  sed -n '/Address:/,/ /p' | awk '{ print substr( $0, 1, length($0)-12 ) }'

You should see the IP of a Tor exit node (You can search the IP )





<br/>

## Notes:


If you only want to use the browser, you might want to skip the Tor proxy setup steps and simply download and use [Tor Browser](https://www.torproject.org/download/) after connecting to a VPN.

Keep in mind that the more layers you use, the more anonimity you will have but at the cost of reduced connection speed. So adapt and combine solutions according to your needs.

