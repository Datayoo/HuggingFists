## HuggingFists安装常见问题

#### 如何使用docker安装

linux版本下可以查看install.sh文件，文件中的命令基于centos7编写，ubuntu用户需要自行调整

主要步骤如下：

1.创建datayoo用户

  adduser datayoo
  
2.修改权限，因为容器使用datayoo用户运行

  chown -R datayoo:datayoo ../sengee.community.linux/*
  
  chmod -R 777 ../sengee.community.linux/*
  
3。合并镜像文件，因为镜像文件超过50M，分发安装包时镜像文件被拆分了

 cat ./images/mysql.tar.gz* > ./images/mysql.tar.gz
 
 cat ./images/sengee.tar.gz* > ./images/sengee.tar.gz
 
4.加载镜像文件

  docker load -i ./images/mysql.tar.gz
  
  docker load -i ./images/nginx.tar.gz
  
  docker load -i ./images/sengee.tar.gz
  
5.启动服务

  docker compose up -d
  
6.等几分钟，服务器上通过curl localhost:38172可以访问到页面

## HuggingFists应用常见问题

#### 系统中找不到视频中相关的算子

​	HuggingFists视频中的算子如果在系统中找不到，可以到https://github.com/Datayoo/Operators 工程中寻找并下载安装。安装时，先安装descriptor结尾的zip包，再安装oyez结尾的zip包。如果这里也没有你需要的算子，可以加入技术支持群寻求支持。

​	安装方法：HuggingFists系统的"资源库"->"算子库"，点击“上传”按钮，上传安装包。安装后系统会返回安装结束，相关算子会自动上传到对应的算子分组下，在当前的界面无法确认安装了多少个算子。可切换到“检索”界面检索相关算子，也可进入流程编辑界面搜索使用对应算子。

#### 系统中找不到视频中相关的连接器

​	HuggingFists视频中的连接器如果在系统中找不到，可以到https://github.com/Datayoo/Connectors 工程中寻找并下载安装。如果这里也没有你需要的连接器，可以加入技术支持群寻求支持。

​	安装方法：HuggingFists系统的"资源库"->"连接器库"，点击“上传”按钮，上传安装包。安装后系统会返回安装结束，当前页面可以看到安装成功的连接器。

#### 如何访问本地文件目录
   HuggingFists当前采用容器化方案进行分发，所以所谓的本地文件系统是指的容器内挂载的目录，具体可以查看docker-compose.yml文件，其中/home/datayoo/dfs目录是系统默认的文件目录，当前挂载的是HuggingFists/dfs文件夹
   
   用户要访问本地文件，有以下三种方法
   
   (1)把文件copy到dfs目录下
   
   (2)启动前修改这部分挂在目录，主要docker-compose文件里几个dfs目录都要修改
   
   (3)给每个服务添加一个新的挂载目录指向你想访问的目录比如 /your/new/path:/home/datayoo/pathname ，对比第2中方法，需要在系统中新建一个本地文件系统，路径指向/home/datayoo/pathname
   
   注意：2和3这两种方法必须将本地目录权限给到datayoo用户，参考【如何使用docker安装】中修改权限的描述
   

#### 使用localhost作为地址为什么无法创建本地数据库连接

​	由于HuggingFists采用的容器技术进行的安装，当使用者配置地址为localhost时，实际表示的是容器本身而并非我们习惯上认为的当前设备。所以，当客户需要连接当前设备上的数据库时，需要查看设备的IP地址，并配置该IP作为数据库地址，创建数据库连接。
