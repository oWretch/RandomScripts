# Portainer-CE 2.0 Server
 docker run \
 	--name=portainer \
    --hostname portainer \
	--net macvlan1 \
	--ip 172.22.0.251 \
	--dns 172.22.0.1 \
    --detach \
 	--restart=always \
    --env EULA=TRUE \
 	portainer/portainer-ce \
 	--bind :443 \
 	--ssl \
	--volume /volume2/docker/portainer/data:/data \
 	--volume /volume2/docker/portainer/certs:/certs:ro \
	--volume /var/run/docker.sock:/var/run/docker.sock \
	--sslcert /certs/fullchain.pem \
	--sslkey /certs/privkey.pem
