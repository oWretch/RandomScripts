# Docker macvlan configuration commands:

# VLAN 1
docker network create \
        --driver macvlan \
        --gateway=172.22.0.1 \
        --subnet=172.22.0.0/24 \
        --ip-range=172.22.0.224/27 \
        -o parent=ovs_bond0 \
        macvlan1
