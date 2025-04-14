#!/bin/bash
(until echo > /dev/tcp/datayoo.brackets/38600; do
  echo "等待brackets服务"
  sleep 2
done) 2>/dev/null
./home/datayoo/scripts/sengee start
tail -f /dev/null

