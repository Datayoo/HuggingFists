#!/bin/bash
(until echo > /dev/tcp/datayoo.mysql/3306; do
        echo "等待数据库服务启动"
        sleep 2;
done;) 2>dev/null
./home/datayoo/scripts/authx start
tail -f /dev/null

