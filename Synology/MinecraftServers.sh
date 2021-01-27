# Minecraft Server docker configurations

# Survival server
docker run \
    --name Minecraft-Survival \
    --hostname MinecraftSurvival \
    --net macvlan-13 \
    --ip 192.168.13.231 \
    --dns 172.22.0.1 \
    --interactive \
    --tty \
    --detach \
    --restart always \
    --env EULA=TRUE \
    --env ServerIP=192.168.13.231 \
    --volume /volume1/docker/minecraft/survival:/data \
    itzg/minecraft-bedrock-server

# Creative server
docker run \
    --name Minecraft-Creative \
    --hostname MinecraftCreative \
    --net macvlan-13 \
    --ip 192.168.13.232 \
    --dns 172.22.0.1 \
    --interactive \
    --tty \
    --detach \
    --restart always \
    --env EULA=TRUE \
    --env ServerIP=192.168.13.232 \
    --volume /volume1/docker/minecraft/creative:/data \
    itzg/minecraft-bedrock-server

# Normal server
docker run \
    --name Minecraft-Normal \
    --hostname MinecraftNormal \
    --net macvlan-13 \
    --ip 192.168.13.233 \
    --dns 192.168.13.1 \
    --interactive \
    --tty \
    --detach \
    --restart always \
    --env EULA=TRUE \
    --env ServerIP=192.168.13.233 \
    --volume /volume1/docker/minecraft/normal:/data \
    itzg/minecraft-bedrock-server
