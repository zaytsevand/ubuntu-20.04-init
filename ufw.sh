#!/bin/bash

ufw default deny incoming
ufw default allow outgoing
ufw allow OpenSSH
ufw show added

echo 'ufw is ready to deny all but ssh connections to a standard port :22'
echo 'to enable ufw please use $ sudo ufw enable'

read -p "Press any key to continue"
