# Minecraft Server docker configurations

# Survival server
docker run \
    --name MinecraftSurvival \
    --hostname MinecraftSurvival \
    --net macvlan-13 \
    --ip 192.168.13.231 \
    --dns 172.22.0.1 \
    --detach \
    --restart always \
    --env EULA=TRUE \
    --env ServerIP=192.168.13.231 \
    --volume /volume1/docker/minecraft/survival:/data \
    itzg/minecraft-bedrock-server

# Creative server
docker run \
    --name MinecraftCreative \
    --hostname MinecraftCreative \
    --net macvlan-13 \
    --ip 192.168.13.232 \
    --dns 172.22.0.1 \
    --detach \
    --restart always \
    --env EULA=TRUE \
    --env ServerIP=192.168.13.232 \
    --volume /volume1/docker/minecraft/creative:/data \
    itzg/minecraft-bedrock-server
