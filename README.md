# auTor ( STILL IN DEVELOPMENT STAGE! CODES ARE MESSY! )

The purpose of this project : enable tor bridge mode on cli-terminal enviroment. 

I know that browser-version already have such as obfs4 bridge mode, but cli-terminal doesn't have by default. 

This script is heavily inspired by the blackbox.org author <<gitrepo>>. 
  
The script will have the following features below.

1. `bleachbit` : to clean unecessary garbage/cache files on the system to better security.
2. `kill processes + flush dhcp` : processes that might expose its data and ip tables must be cleaned.
3. `apt update packages` : make sure that the packages are up-to-date. 
4. `tor + bridge mode` : this will gurantee anonymity and avoid being assigned a blacklisted IP address. 

https://bridges.torproject.org/ has IP address for an exit node. 



Bridge mode is enabled by adding the following code...
You need to send an email to tor.org and get an assigned IP.

```
UseBridges 1

UpdateBridgesFromAuthority 1

Bridge 81.91.1.81:443
Bridge 194.38.106.35:80
```

You can receive an email then process it to add to /et/torcc. 
Frequently, an update on the IP might be needed and you can avoid having an black-listed IP.
