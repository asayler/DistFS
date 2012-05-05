#!/bin/bash

echo "Stoping All Tahoe Systems..."

#Stop XPC3
echo "Stoping Tahoe on XPC3..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.12 'bash -s' < /home/dfs/tahoe-scripts/stop-tahoe-xpc3.sh
echo "Stoping Tahoe on XPC3 complete"
sleep 1

#Stop XPC2
echo "Stoping Tahoe on XPC2..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.11 'bash -s' < /home/dfs/tahoe-scripts/stop-tahoe-xpc2.sh
echo "Stoping Tahoe on XPC2 complete"
sleep 1

#Stop XPC1
echo "Stoping Tahoe on XPC1..."
sshpass -f /home/dfs/.pwd ssh 192.168.1.10 'bash -s' < /home/dfs/tahoe-scripts/stop-tahoe-xpc1.sh
echo "Stoping Tahoe on XPC1 complete"
sleep 1

echo "Stoping Tahoe All Tahoe Systems complete"
