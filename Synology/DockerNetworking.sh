# Docker macvlan configuration commands:

# VLAN 1
docker network create \
        --driver macvlan \
        --gateway=172.22.0.1 \
        --subnet=172.22.0.0/24 \
        --ip-range=172.22.0.224/27 \
        -o parent=bond0 \
        macvlan-1

# VLAN 13
docker network create \
        --driver macvlan \
        --gateway=192.168.13.1 \
        --subnet=192.168.13.0/24 \
        --ip-range=192.168.13.224/27 \
        -o parent=bond0.13 \
        macvlan-13

# Bridge VLAN 13
docker network create \
	    --driver=bridge \
        -o parent=bond0.13 \
        bridge-13
