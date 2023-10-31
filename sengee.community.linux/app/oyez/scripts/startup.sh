#!/bin/sh
first=0
if [ -f "/home/datayoo/logs/oyez/sys.log" ];then
  first=1
fi
./home/datayoo/scripts/oyez start
if [ $first==0 ];then
    mkdir -p /home/datayoo/logs/oyez
    touch /home/datayoo/logs/oyez/sys.log
    ln -sf /proc/1/fd/1 /home/datayoo/logs/oyez/sys.log
fi
tail -f /dev/null

