#!/bin/bash
url="http://datayoo.brackets:38600/brackets/plugin/metadata"
code=`curl -I -m 30 -o /dev/null -s -w %{http_code}"\n" $url`           #第一次访问,访问成功则不进入下面while循环
while [ $code -ne 200 ]
do
  sleep 5s
  echo "waiting for brackets"
  code=`curl -I -m 30 -o /dev/null -s -w %{http_code}"\n" $url`
done
./home/datayoo/scripts/sengee start
tail -f /dev/null

