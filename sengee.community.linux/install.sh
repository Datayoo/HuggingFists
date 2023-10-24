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
echo 'nerdctl安装开始'
mkdir -p /usr/local/bin
\cp -f ./nerdctl/bin/* /usr/local/bin
\cp -f ./nerdctl/lib/systemd/system/*.service /lib/systemd/system
mkdir -p /opt/cni/bin
\cp -f ./nerdctl/libexec/cni/* /opt/cni/bin
systemctl daemon-reload
echo '设置开机启动'
systemctl enable  --now buildkit
systemctl enable --now containerd
echo '设置镜像目录'
mkdir -p /etc/containerd
\cp ./config.toml /etc/containerd/
echo '启动Containerd'
systemctl start containerd
systemctl stop containerd
systemctl start containerd
echo '装载镜像'
nerdctl load -i ./images/mysql.tar.gz
nerdctl load -i ./images/nginx.tar.gz
nerdctl load -i ./images/server.tar.gz
nerdctl load -i ./images/cal.tar.gz 
echo '启动服务'
nerdctl compose up -d
echo '启动需要几分钟，启动后可通过curl localhost:38172访问'
exit

