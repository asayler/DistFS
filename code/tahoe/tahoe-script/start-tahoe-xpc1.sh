#!/bin/bash

#Start Tahoe - XPC1

#Start Tahoe Introducer
/home/dfs/tahoe/allmydata-tahoe-1.9.1/bin/tahoe start --node-directory=/tahoe/introducer/
sleep 1

#Start Tahoe Client
/home/dfs/tahoe/allmydata-tahoe-1.9.1/bin/tahoe start --node-directory=/tahoe/client/
sleep 1

#Setup sshfs mount
sshfs 127.0.0.1: /tahoe/sshfs-mnt -p 8022 -o ssh_command=/home/dfs/sshpw.sh -o big_writes
sleep 1