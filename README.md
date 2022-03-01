# Privacy Toolbox Project


Current status: Work In Progress






$ git clone https://github.com/waelmas/anonimity-toolbox.git && cd anonimity-toolbox





Recommended: Install a no-log VPN and connect first

Am audited no-log VPN that accepts direct crypto payments:
https://www.privateinternetaccess.com/download

When registering you can use a temporary email to get the credentials upon payment
(Remember to change the password once you get the credentials)
You can use https://temp-mail.org/en




## Tor Proxy

Install tor:

$ chmod +x ./tor/install-tor.sh && sudo ./tor/install-tor.sh


Torify shell for the current session:

$ sudo ./tor/torify-temp.sh


Torify permanently (all future shells after reboot):

$ sudo ./tor/torify.sh


Setup control-port for Tor (to be able to request new identities):

$ sudo ./tor/enable-control-port.sh


Get your current IP Address:

$ sudo ./tor/get-current-ip.sh