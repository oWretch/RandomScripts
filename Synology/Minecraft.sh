# Survival Server
##################

# Create container
docker run \
    --name Minecraft-Survival \
    --hostname MinecraftSurvival \
    --interactive \
    --tty \
    --detach \
    --net macvlan1 \
    --ip 172.22.0.241 \
    --dns 172.22.0.1 \
    --restart always \
    --env EULA=TRUE \
    --env TZ=Australia/Melbourne \
    --volume /volume2/docker/minecraft/survival:/data \
    itzg/minecraft-bedrock-server

# Normal Server
##################

# Create container
docker run \
    --name Minecraft-Normal \
    --hostname MinecraftNormal \
    --interactive \
    --tty \
    --detach \
    --net macvlan1 \
    --ip 172.22.0.242 \
    --dns 172.22.0.1 \
    --restart always \
    --env EULA=TRUE \
    --env TZ=Australia/Melbourne \
    --volume /volume2/docker/minecraft/normal:/data \
    itzg/minecraft-bedrock-server

# Creative Server
##################

# Create container
docker run \
    --name Minecraft-Creative \
    --hostname MinecraftCreative \
    --interactive \
    --tty \
    --detach \
    --net macvlan1 \
    --ip 172.22.0.243 \
    --dns 172.22.0.1 \
    --restart always \
    --env EULA=TRUE \
    --env TZ=Australia/Melbourne \
    --volume /volume2/docker/minecraft/creative:/data \
    itzg/minecraft-bedrock-server
