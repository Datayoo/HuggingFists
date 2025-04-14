#!/bin/sh
sleep 5
first=0
if [ -f "/home/datayoo/logs/gateway/sys.log" ];then
  first=1
fi
./home/datayoo/scripts/gateway start
if [ $first==0 ];then
    mkdir -p /home/datayoo/logs/gateway
    touch /home/datayoo/logs/gateway/sys.log
fi
tail -f /dev/null

