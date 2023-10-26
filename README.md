# HuggingFists

​	

​	HuggingFists一款能够便捷使用LLM及HuggingFace模型的的低代码数据流工具，部分功能可被视为低代码版的Langchain。目前还不支持模型的训练场景，后续将开发补充完全。

## 安装说明

### 环境要求

​	Linux系统3.10.0-957.21.3.el7.x86_64

​	至少4核8G，系统使用Containerd容器，容器以及镜像会固定存放到/data目录下

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/1.png)

### 安装步骤

- 从git上拉取工程文件 git clone https://github.com/Datayoo/HuggingFists.git
- 进入sengee.community.linux,执行安装脚本 bash install.sh。

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/3.png)

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/4.png)

​	脚本执行结束后，可通过curl http://localhost:38172 测试系统是否正确安装。安装结束后，可通过访问url地址：“http://服务器IP:38172” 打开工具使用界面。

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/5.png)




