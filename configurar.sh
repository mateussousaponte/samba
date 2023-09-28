#!/bin/bash

useradd usr1 -p usr1
useradd usr2 -p usr2
useradd admin -p admin

echo -e "usr1\nusr1" | smbpasswd -a -s usr1
echo -e "usr2\nusr2" | smbpasswd -a -s usr2
echo -e "admin\nadmin" | smbpasswd -a -s admin

exec smbd --foreground --no-process-group