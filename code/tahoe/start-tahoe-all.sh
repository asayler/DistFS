#!/bin/bash

echo "Starting All Tahoe Systems..."

#Start XPC1
echo "Starting Tahoe on XPC1..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.10 'bash -s' < /home/dfs/tahoe-scripts/start-tahoe-xpc1.sh
echo "Starting Tahoe on XPC1 complete"
sleep 1

#Start XPC2
echo "Starting Tahoe on XPC2..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.11 'bash -s' < /home/dfs/tahoe-scripts/start-tahoe-xpc2.sh
echo "Starting Tahoe on XPC2 complete"
sleep 1

#Start XPC3
echo "Starting Tahoe on XPC3..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.12 'bash -s' < /home/dfs/tahoe-scripts/start-tahoe-xpc3.sh
echo "Starting Tahoe on XPC3 complete"
sleep 1

echo "Starting Tahoe All Tahoe Systems complete"
