#!/bin/bash/
cat<<EOF
ooooo ooooo                                    o88                                ooooooooooo o88                o8               
 888   888 oooo  oooo    oooooooo8   oooooooo8 oooo  oo oooooo     oooooooo8       888    88  oooo   oooooooo8 o888oo  oooooooo8  
 888ooo888  888   888  888    88o  888    88o   888   888   888  888    88o        888ooo8     888  888ooooooo  888   888ooooooo  
 888   888  888   888   888oo888o   888oo888o   888   888   888   888oo888o        888         888          888 888           888 
o888o o888o  888o88 8o 888     888 888     888 o888o o888o o888o 888     888      o888o       o888o 88oooooo88   888o 88oooooo88  
                        888ooo888   888ooo888                     888ooo888
EOF
#log_dir=/var/log/sengee-install.log
#compose=./docker-compose.yml
echo '开始安装'
echo '创建用户'
adduser datayoo
chown -R datayoo:datayoo ../sengee.community.linux/*
chmod -R 777 ../sengee.community.linux/*
echo '装载镜像'
cat ./images/mysql.tar.gz* > ./images/mysql.tar.gz
cat ./images/sengee.tar.gz* > ./images/sengee.tar.gz

docker load -i ./images/mysql.tar.gz
docker load -i ./images/nginx.tar.gz
docker load -i ./images/sengee.tar.gz
echo '启动服务'
docker compose up -d

echo '服务启动需要几分钟，启动后默认可通过38172访问'
exit

