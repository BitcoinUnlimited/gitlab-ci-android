#!/bin/bash
echo "1"
/root/nexa/bin/nexad -daemon
echo "2"
sleep 60
echo "3"
/root/nexa/bin/nexa-cli getinfo
echo "4"
/root/nexa/bin/nexa-cli generate 110
sleep 5
/root/nexa/bin/nexa-cli stop
echo "done!"
