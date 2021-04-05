# UniFi Controller
docker run \
    --name=UniFi-Controller \
    --hostname unifi.home.dailyfuneral.com \
    --user unifi \
    --net macvlan1 \
    --ip 172.22.0.224 \
    --dns 172.22.0.1 \
    --detach \
    --restart=always \
    --env TZ='Australia/Melbourne' \
    --volume /volume2/docker/unifi:/unifi \
    jacobalberty/unifi:latest
