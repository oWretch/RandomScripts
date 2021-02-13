# UniFi Controller
 docker run \
 	--name=UniFi-Controller \
    --hostname unifi \
    --net macvlan-1 \
    --ip 172.22.0.224 \
    --dns 172.22.0.1 \
    --detach \
    --restart=always \
    --env TZ='Australia/Melbourne' \
    --volume /volume1/docker/unifi/data:/unifi/data \
    --volume /volume1/docker/unifi/log:/unifi/log \
    --volume /volume1/docker/unifi/init.d:/unifi/init.d \
    --volume /volume1/docker/unifi/run:/var/run/unifi \
 	--volume /volume1/docker/certs/dailyfuneral.com:/unifi/certs:ro \
 	--user unifi \
 	jacobalberty/unifi:latest
