# auTor

This project is created for the purpose of enabling tor bridge mode on cli-terminal enviroment. 

I know that browser-version already have such as obfs4 bridge mode, but cli-terminal doesn't have by default. 

This script is heavily inspired by the blackbox.org author <<gitrepo>>. 
  
The script will have the following features below.

1. bleachbit : to clean garbage/cache files on the system to better security.
2. kill processes + flush dhcp : processes that might expose its data and ip tables must be cleaned.
3. apt update packages : make sure that the packages are up-to-date. 
4. tor + bridge mode : this will enable more anonymous surfing and avoid blacklist IP address. 

https://bridges.torproject.org/ has IP address for an exit node. 



Bridge mode is enabled by adding the following code...
but ip addresses have to be obtained manually.

```
UseBridges 1

UpdateBridgesFromAuthority 1

Bridge 81.91.1.81:443
Bridge 194.38.106.35:80
```

idea-1 you can receive an email then process it to add to /et/torcc. 

That might be less anonymity but frequent update is possible and it will avoid more blaklisted ip of tor network.
