#!/bin/bash

#Stop Tahoe - XPC1

#Unmount sshfs
fusermount -u /tahoe/sshfs-mnt
sleep 1

#Stop Tahoe Client
/home/dfs/tahoe/allmydata-tahoe-1.9.1/bin/tahoe stop --node-directory=/tahoe/client/
sleep 1

#Stop Tahoe Introducer
/home/dfs/tahoe/allmydata-tahoe-1.9.1/bin/tahoe stop --node-directory=/tahoe/introducer/
sleep 1
