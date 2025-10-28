#!/bin/bash
(until echo > /dev/tcp/datayoo.sengee/38500; do
  echo "等待sengee服务"
  sleep 2
done) 2>/dev/null
sleep 2
./home/datayoo/scripts/mcp start
tail -f /dev/null

