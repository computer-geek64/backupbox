#!/bin/bash
# create_samba_user.sh

useradd -ms /bin/false "$1"
smbpasswd -a "$1"
usermod -aG family "$1"
