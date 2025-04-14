#!/bin/bash
(until echo > /dev/tcp/datayoo.sengee/38500; do
  echo "等待sengee服务"
  sleep 2
done) 2>/dev/null
/home/datayoo/scripts/dencho start
tail -f /dev/null

