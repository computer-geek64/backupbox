#!/bin/bash
# run.sh

docker build -t samba .
docker create --network=host -v "/data/nas/samba/passdb.tdb:/var/lib/samba/private/passdb.tdb" -v "/data/nas/family:/data/family" -v "/data/nas/users:/home" -v "/data/nas/windows_backup:/data/windows_backup" --restart=unless-stopped --name samba samba
docker container start samba

# Add Samba users with:
# docker container exec -it samba ./create_samba_user.sh [user] [password]

# Delete Samba users with:
# docker container exec -it samba ./delete_samba_user.sh [user]
