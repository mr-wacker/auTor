#!/bin/bash

dangerous_process="chrome dropbox firefox pidgin skype thunderbird xchat"

kill_process() {
        killall -q $dangerous_process
        # psmisc
}

clean_dhcp() {
        dhclient -r 
        # Tell dhclient to release the current lease it has from the server. This is not required by the DHCP protocol, but some ISPs require their clients to notify the server if they wish to release an assigned IP address. 

        rm -f /var/lib/dhcp/dhclient.*.leases
        # .leases file contain the server-name, fixed-address and the time of its new/old leases which can reveal the client's time.
}


change_hostname() {

        # clean the old leases data 
        clean_dhcp

        # make a random alphabetical name
        random_hostname=$(base64 /dev/urandom | head -c 16 | sed -r "s/[^a-zA-Z]//g")

}

change_mac() {

        var=0

        # /sys/class/net has name of network interface eth0, lo and stuff
        ls /sys/class/net

        read -p 
}

iptables_flush() {

        # Flush the selected chain (all the chains in the table if none is given). This is equivalent to deleting all the rules one by one. 
        iptables -F 

        # delete nat table 
        iptables -t nat -F 
}

redirect_to_tor() {

        # check if tor is running /var/run/tor/tor.pid 

        # insert the iptables rules into /etc/network/iptables.rules

        # flush iptables

        # stop resolvconf
        # iptables do some stuff

}

bleachbit() {
        # use bleachbit to delete unnecessary files to preserve privacy

}

tor_start() {

        # kill processes

        # redirect to tor 

        # restart network services

        # finally, start tor services with bridge configurateion on
}

update() {

        xargs sudo apt update <'.update-packages.txt'

}
