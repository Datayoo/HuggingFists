中文 | [English](https://github.com/Datayoo/HuggingFists/blob/main/README.md) 
# HuggingFists

​	

​	HuggingFists一款能够便捷使用LLM及HuggingFace模型的低代码数据流工具，部分功能可被视为低代码版的Langchain。目前还不支持模型的训练场景，后续将开发补充完全。

## 安装说明

### 环境要求
#### Linux
​	Linux系统3.10.0-957.21.3.el7.x86_64 

​	至少4核8G，系统使用Containerd容器，容器以及镜像会固定存放到/data目录下

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/1.png)
#### Windows
 推荐Windows 11

### 安装步骤
#### Linux

- 从git上拉取工程文件 git clone https://github.com/Datayoo/HuggingFists.git, 或者直接使用download zip下载。需要注意的是，当使用Windows操作系统克隆项目时，Linux脚本文件中的'\n'会被替换为'\r\n'。当拷贝项目到Linux系统下时，由于'\n'的不同，脚本会无法执行。使用IDEA的开发者可以参考[配置 Git 处理行结束符](https://docs.github.com/zh/get-started/getting-started-with-git/configuring-git-to-handle-line-endings?platform=windows)解决问题。
- 进入sengee.community.linux,执行安装脚本 bash install.sh。

​	脚本执行结束后，可通过curl http://localhost:38172 测试系统是否正确安装。安装结束后，可通过访问url地址：“http://服务器IP:38172” 打开工具使用界面。
 如果外部无法访问到页面，可以将服务器重启一次再试,算子平台会开机自启! 中国国内访问github较慢的朋友，可以移步到[https://share.weiyun.com/mmmowpEX](https://share.weiyun.com/mmmowpEX) 进行下载。
#### Windows
- Windows版的下载地址：[https://share.weiyun.com/2eDVeN8Q](https://share.weiyun.com/2eDVeN8Q)
- 参见[Windows安装说明](https://github.com/Datayoo/HuggingFists/blob/main/HuggingFists%20windows%E7%89%88%E5%AE%89%E8%A3%85%E8%AF%B4%E6%98%8E.docx) 

![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/5.png)

## 系统简介

### ![](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/11.png)首页

​	用于宏观展示系统中各类资源及运行结果

### ![2](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/12.png)数据源

​	用于管理系统中读写可能涉及到的各类数据源。类型包括：数据库、文件系统以及应用等。使用者通过界面选取特定数据源类型，创建数据源实例。可通过数据源实例对数据源进行基本的浏览及管理功能。另外，输入/输出算子可引用数据源实例作为读取和写出的目标。

### ![3](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/13.png)流程管理

 用于设计、调试及管理面向业务的各种数据处理流程。使用者通过拖拽算子，连接端口，构建数据处理流程。一个数据处理流程可被理解为一段可以被执行的代码。有别于目前很多流行的数据处理与分析工具，HuggingFists系统的算子有明确的输入/输出端口来接入和写出数据集。每个输入端口都可以同时接入多个前置端口；每个输出端口也可以同时写出到多个后置的端口。点击端口可以获得数据的输入/输出结构，类似函数调用时，了解函数的输入与返回结构。另外，HuggingFists是少有的能够提供断点调试功能的低代码工具。流程定义时，可点击算子端口完成断点设置。断点调试可极大的辅助使用者编写正确的数据处理流程。除此外，HuggingFists还提供了诸如执行流程的选中分支、函数调用、流程变量、上下文变量、参数变量等概念，用以辅助使用者完成复杂的数据处理流程编写。


### ![4](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/14.png)作业管理

​	用于创建及调度流程作业，设置作业的执行周期，满足业务系统的生产需要。只能为正式发布的流程创建作业，没有被发布的流程被视作草稿态，无法安排作业调度计划。即时作业创建后立刻执行；定时作业创建后按指定的调度计划执行。作业每次调度时，产生一个任务，系统会留存任务执行的相关信息，如：日志、运行状态、输出结果等。

### ![6](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/16.png)环境管理

​	用于管理系统运行所需要的资源环境，如：工作节点管理、服务设置管理等。工作节点管理管理作业运行时的资源，流程被派发到工作节点进行解释执行。支持在计算资源不足时，水平扩展为多个工作节点。服务设置管理提供Http代理的管理。

### ![7](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/17.png)资源管理

​	用于管理系统中的各类数据制品资源，如：连接器管理、算子管理等。允许用户根据需求扩展连接器和算子。相关开发标准正在整理过程中。连接器用于实现与数据源的连接，每种类型的数据源都有一个或多个连接器的实现。有些情况下，需要为不同版本的数据源准备不同的连接器实现；算子用于实现不同的功能，类似编程语言的一个函数，使用者通过连接算子组成数据处理逻辑，完成的数据的处理。

### 账号管理

​	用于管理使用者的各类账号，如：数据源账号、API账号等。HuggingFists提供的账号管理在系统右上角，“用户”->“个人设置”->“账号资源”。这里集中管理使用者的各类账号。创建数据源时需要填充账号，此时需要预先在此处创建账号。然后在需要账号时，选定合适的账号。初看这样的账号管理模式很繁琐，但由于很多账号会重复在多个数据源实例或算子实例中使用，当账号基于安全需要定期更新了密码，那么这种集中管理模式可以以最小的代价完成账号密码的更新。

## 如何使用HuggingFace

### 如何通过Inference API访问Hugging Face中的模型

​	要想通过Inference API访问Hugging Face模型，首先需要在Hugging Face网站中注册一个账号。可通过以下的链接https://huggingface.co/join 注册账号。注册成功后，通过界面右上角的个人信息->Settings->Access Tokens申请一个专属的访问令牌。

​	其次，在HuggingFists右上角的个人信息->个人设置->资源账号中添加一个Hugging Face访问账号。进入资源账号界面后，选择添加资源账号，弹出如下的界面：

<img src="https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/res_account.png" alt="image-20230921001554650" style="zoom: 33%;" />

选中Hugging Face类型，并将申请到的访问令牌填充进“访问token”输入框，填充完成后提交，创建成功。

​	有时候，我们可能处于一个内网环境，无法直接访问到Hugging Face网站，那么我们可以配置一个Http代理，以方便我们跨过局域网的限制。在HuggingFists系统中，进入“环境管理”->"服务配置"模块。点击“新建服务配置”，弹出如下界面：

<img src="https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/svc_settings.png" alt="svc_settings" style="zoom:33%;" />

选中“网络Http代理服务”类型，填充代理相关信息，提交保存代理配置。

​	好，准备工作已经就绪，我们可以尝试使用Hugging Face算子来访问模型实现业务需求了。下面我们来看两个相关示例，一个是使用自然语言相关模型的例子；一个是使用图像相关模型的例子。先看使用自然语言相关模型的例子。

![image-20230921110737524](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/txt_flow.png)

​	上图为一个读取互联网新闻，抽取新闻中的文本内容，然后对其进行文本摘要、文本情感分类以及命名实体识别三种作业任务的流程示例。图中红色框选部分为流程定义过程中可以使用的算子树；蓝色部分为流程的定义面板；绿色部分为算子的属性配置及帮助区。如图所示，选中一个Hugging Face的摘要提取算子后，右侧绿色框中显示了它的可配置属性和文档说明。属性部分的前两个框输入之前已经提前准备好的Http代理和Hugging Face账号。后面的参数框可根据算子帮助辅助完成设置。以此方式拖拽和定义完所有流程，就可以点击蓝色区域上侧的按钮调试或执行流程了。下面我们再看一个图像相关模型的例子。

![image-20230921131732072](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/img_flow.png)

​	该示例同样可在上面提到的视频中看到详细的操作和讲解。其主要演示了对一张图片进行了物体识别、图像分割以及图像分类三种作业任务，涉及了三个不同的模型。

​	以上示例中，演示了几个模型。但实际使用时，哪个模型效果比较好呢？需要使用者自己去查找和比较了。

### 如何访问本地化部署的Hugging Face模型

​	相较通过Inference API访问Hugging Face中的模型，本地化部署模型需要的准备时间稍长，但是成本和安全性上更可控。下面我们简单介绍下，如何使用HuggingFists访问本地部署的HuggingFace模型。

​	首先，我们选择一个希望本地部署的模型，然后选中模型的"Files and versions"页，如下图：

![image-20230921135329469](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/modelFiles.png)

 从图中我们可以看到模型相关的文件有很多，一般而言除了说明类文档，都是模型装载运行所需要的。所以，我们需要提前把所有相关的文件都下载本地，并将这些文件都存放在同一个文件夹下。由于Hugging Face没有提供文件的打包下载功能，所以目前只能手动，一个一个的下载(这是模型本地化部署最麻烦的地方)。

​	模型下载完成后，创建模型的应用流程。流程的创建过程及搭建方式与使用Inference API算子一致，唯一的差别是，当选择算子时，需要选择算子名中带有"Pte"部分的算子。这类算子支持模型的本地调用。"Pte"算子的种类超过Inference API算子，因为Hugging Face并不是为所有类型的任务都提供了Inference API。两种算子最大的差别如下：

​	<img src="https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/op_pte.png" alt="image-20230921143501025" style="zoom: 50%;" />

​	图中可以看到在使用本地化部署的模型时，不再需要Http代理以及Hugging Face账号，取而代之的是选择一个本地的文件夹路径。文件夹内即为我们下载的模型。一般情况下，算子调用时不会再拉取其它文件，但笔者团队实验时发现，确实存在还要在运行时下载部分模型文件的情况。这种情况下，算子的启动速度就会被拖慢。另外还有两个属性Python脚本片段和计算设备值得注意。由于Hugging Face网站上的模型太多，有些模型在调用时会有细微差别，若存在无法正常启动模型的情况，可适当调整Python脚本片段确保模型可被正常加载执行。计算设备属性用于指定模型运行在本地计算机的哪个计算单元上，支持CPU和GPU两种计算单元。可以根据本地机器的情况设定该参数。算子的其它相关属性可参见算子说明进行配置。配置完成就可以驱动流程在本地使用模型了。

### 如何访问Hugging Face中的数据集

​	 Hugging Face网站能够找到全球从业者分享的各类数据集，方便使用者训练或测试模型。HuggingFists提供了一个针对HuggingFace网站的连接器，可以方便使用者选中合适的数据集，并将这些数据集存储到指定的存储系统中。方便使用者应用这些数据。

​	首先，在数据源功能模块中，选中应用程序Tab页，选中HuggingFace连接器创建HuggingFace数据源，并设置好访问账号与访问代理等配置。如下图：

<img src="https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/create_connector.png" alt="create_connector" style="zoom:33%;" />

点击“提交”按钮后，会创建出一个HuggingFace数据源。可以通过点击“查看数据”按钮浏览数据源，挑选合适的数据集。

![image-20231001162817148](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/dataset.png)选中合适的数据集后，可以定义一个数据处理流程将数据集中的数据读出并存储到数据库或文件中。

![image-20231004092415115](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/huggingfacereader.png)

## 微信交流群
![image-20231004092415115](https://github.com/Datayoo/HuggingFists/blob/main/docs/imgs/code.png)

## 学习资料

| 视频链接                                                     | 内容描述                                                     |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| https://www.bilibili.com/video/BV1Ku4y1r72H/                 | 如何低代码使用HuggingFace中的各类模型。给出了一个使用自然语言模型的示例和一个使用计算机视觉模型的示例。示例中涉及了账号以及Http代理的创建过程。 |
| https://www.bilibili.com/video/BV1G84y1m79m/                 | 如何低代码使用HuggingFace中的各类数据集。                    |
| https://www.bilibili.com/video/BV1rz4y137pH/<br />https://www.bilibili.com/video/BV1oy4y1A7Bd/ | 如何使用低代码方式对图片进行去色、旋转、剪切等操作           |
| https://www.bilibili.com/video/BV1SP411W7kv/                 | 如何低代码抽取Html中的文本信息                               |
| https://www.bilibili.com/video/BV138411Q7ia/                 | 如何低代码读取MySQL中的数据                                  |
| https://www.bilibili.com/video/BV1qN4y1R7Pt/                 | 如何使用流程变量读取MySQL中的数据                            |
| https://www.bilibili.com/video/BV1ok4y1A7ZM/                 | 如何使用上下文变量读取MySQL中的数据                          |
| https://www.bilibili.com/video/BV19F411X7D1/                 | 如何低代码抽取visio文件中的文本                              |
| https://www.bilibili.com/video/BV1RN41127vt/                 | 如何低代码抽取visio文件中的关系                              |
| https://www.bilibili.com/video/BV1qV41157HH/                 | 如何低代码抽取Word中的文本与图片                             |
| https://www.bilibili.com/video/BV1X94y1C7Bh/                 | 如何低代码抽取Word中的表格                                   |
| https://www.bilibili.com/video/BV1Tg4y1J7WV/                 | 如何低代码抽取pdf中的文本                                    |
| https://www.bilibili.com/video/BV1jk4y1V7nK/                 | 如何低代码读取Excel中的数据                                  |
| https://www.bilibili.com/video/BV1Ks4y1c7bz/                 | 如何低代码写入MySQL数据表                                    |
| https://www.bilibili.com/video/BV16u411b79b/                 | 如何低代码清除MySQL数据表并同时进行多表写入                  |
| https://www.bilibili.com/video/BV1rW4y1D7mb/<br />https://www.bilibili.com/video/BV1Ps4y117pS/ | 如何低代码读写avro文件                                       |
| https://www.bilibili.com/video/BV14u411Y7Z3/                 | 如何读取xml格式数据                                          |
| https://www.bilibili.com/video/BV1D8411o7x6/                 | 如何读取Json格式数据                                         |
| https://www.bilibili.com/video/BV1yV4y1Q7uT/                 | 如何使用平台对流程进行断点调试                               |
| https://www.bilibili.com/video/BV17k4y1h79M/                 | 如何低代码抽取实体名                                         |
| https://www.bilibili.com/video/BV1vw411U7ZV/                 | 如何低代码抽取文本中的时间信息                               |
| https://www.bilibili.com/video/BV1Vj411y7j4/                 | 如何低代码抽取文本中的电话号码                               |




