# Portainer-CE 2.0 Server
 docker run \
 	--name=portainer \
    --hostname portainer \
    --net macvlan-1 \
    --ip 172.22.0.251 \
    --dns 172.22.0.1 \
    --detach \
 	--restart=always \
    --env EULA=TRUE \
    --volume /volume1/docker/portainer:/data \
 	--volume /volume1/docker/unifi/cert:/certs:ro \
 	--volume /var/run/docker.sock:/var/run/docker.sock \
 	portainer/portainer-ce \
 	--bind :443 \
 	--ssl \
 	--sslcert /certs/cert+chain.pem \
 	--sslkey /certs/privkey.pem
