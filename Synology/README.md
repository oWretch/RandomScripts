Synology Configuration
======================

The following configurations are setup on the Synology:
- Docker
- Plex (with certificate loaded)

Docker networking is configured use macvlans so containers are on the network directly. 
To allow macvlan to create VLAN interfaces, set `USERCTL=yes` in `/etc/sysconfig/network-scripts/ifcfg-bond0`
