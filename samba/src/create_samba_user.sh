#!/bin/bash
# create_samba_user.sh

useradd -ms /bin/false "$1"
(echo "$2"; echo "$2") | smbpasswd -s -a "$1"
usermod -aG family "$1"
