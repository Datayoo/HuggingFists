#!/bin/sh
sleep 5
first=0
if [ -f "/home/datayoo/logs/sengee/sys.log" ];then
  first=1
fi
url="http://datayoo.brackets:38600/brackets/plugin/metadata"
code=`curl -I -m 30 -o /dev/null -s -w %{http_code}"\n" $url`           #第一次访问,访问成功则不进入下面while循环
while [ $code -ne 200 ]
do
  sleep 5s
  echo "waiting for brackets"
  code=`curl -I -m 30 -o /dev/null -s -w %{http_code}"\n" $url`
done
./home/datayoo/scripts/sengee start
if [ $first==0 ];then
    mkdir -p /home/datayoo/logs/sengee
    touch /home/datayoo/logs/sengee/sys.log
    ln -sf /proc/1/fd/1 /home/datayoo/logs/sengee/sys.log
fi
tail -f /dev/null

