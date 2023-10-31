#!/bin/sh
sleep 5
first=0
if [ -f "/home/datayoo/logs/authx/sys.log" ];then
  first=1
fi
./home/datayoo/scripts/authx start
if [ $first==0 ];then
    mkdir -p /home/datayoo/logs/authx
    touch /home/datayoo/logs/authx/sys.log
    ln -sf /proc/1/fd/1 /home/datayoo/logs/authx/sys.log
fi
tail -f /dev/null

