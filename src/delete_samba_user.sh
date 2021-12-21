#!/bin/bash
# delete_samba_user.sh

smbpasswd -x "$1"
userdel -r "$1"
