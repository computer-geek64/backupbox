#!/bin/bash
# run.sh

docker build -t samba .
docker create --network=host -v "/data/samba/family:/data/family" -v "/data/samba/users:/home" --restart=unless-stopped --name samba samba
docker container start samba

# Add Samba users with:
# docker container exec -it samba ./create_samba_user.sh [user]

# Delete Samba users with:
# docker container exec -it samba ./delete_samba_user.sh [user]
