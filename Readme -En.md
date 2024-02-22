**切换语言:  [中文](https://github.com/Datayoo/HuggingFists/blob/main/README.md),[English](https://github.com/Datayoo/HuggingFists/blob/main/Readme%20-En.md)**
**HuggingFists**
================

HuggingFists is a low-code data flow tool that enables convenient use of LLM and HuggingFace models. Some of its functions can be considered as a low-code version of Langchain. Currently, it does not support model training scenarios, but this will be developed and supplemented in the future.

**Installation Instructions**
=============================
**System Requirements**
------------------------------------------------------
**Linux：**Linux system 3.10.0-957.21.3.el7.x86_64 At least 4 cores and 8GB of RAM; the system uses Containerd containers, and containers and images will be stored in the /data directory.
(https://github.com/Datayoo/HuggingFists/raw/main/docs/imgs/1.png)
**Windows：**Windows 11 is recommended.

**Installation Steps**
----------------------
**Linux** 
Clone the project files from git using: git clone *https://github.com/Datayoo/HuggingFists.git*, or download directly as a zip file. Note that when cloning the project on a Windows operating system, the '\n' in Linux script files will be replaced with '\r\n'. When copying the project to a Linux system, the scripts will not execute due to the difference in '\n'. Developers using IDEA can *refer to configuring Git to handle line endings* to resolve this issue. 
Navigate to sengee.community.linux and run the installation script with bash install.sh.
After the script execution is complete, you can test if the system is correctly installed by using curl *http://localhost:38172*. Once the installation is finished, you can access the tool's interface by visiting the URL: *"http://serverIP:38172"*. If you are unable to access the page externally, you can try restarting the server once, as the operator platform will start automatically on boot! For friends in China who experience slow access to GitHub, you can download the files from *https://pan.quark.cn/s/04722e71b79c*.

**Windows**
For Windows users, you can download the Windows version from the following link: *https://pan.quark.cn/s/f1f8e4e1a5d9*. Follow the installation guide to install the Windows version of the software. After the installation is complete, click on the shortcut to launch HuggingFists. It may take a few minutes to start up, and once the startup is complete, a browser window will automatically pop up.

**System Overview**
===================
**Homepage**
-------- 
Used to provide a macroscopic display of various resources and operational results within the system.

**Data Sources**
------------ 
Used to manage various data sources that may be involved in read/write operations within the system. Types include databases, file systems, and applications, among others. Users can select specific data source types through the interface to create data source instances. Data source instances allow basic browsing and management functions of the data sources. Additionally, input/output operators can reference data source instances as the target for reading and writing.

**Workflow Management**
------------------- 
Used for designing, debugging, and managing various data processing workflows oriented towards business operations. Users can drag operators, connect ports, and build data processing workflows. A data processing workflow can be understood as a segment of executable code. 
Unlike many popular data processing and analysis tools, the operators in the HuggingFists system have clear input/output ports for accessing and writing datasets. Each input port can connect to multiple preceding ports, and each output port can write to multiple subsequent ports simultaneously. Clicking on a port provides insight into the input/output structure of the data, similar to understanding the input and return structures of a function call. Additionally, HuggingFists is one of the few low-code tools that provides breakpoint debugging functionality. 
When defining a workflow, users can set breakpoints by clicking on operator ports. Breakpoint debugging greatly assists users in writing correct data processing workflows. Furthermore, HuggingFists offers concepts such as branch selection, function calls, workflow variables, context variables, parameter variables, and more to help users complete complex data processing workflow development.

**Job Management** 
-------------------
Used to create and schedule workflow jobs, set the execution cycle of jobs to meet the production needs of business systems. Jobs can only be created for formally published workflows; unpublished workflows are considered as drafts and cannot be scheduled for job execution. Immediate jobs execute immediately after creation, while scheduled jobs adhere to specified scheduling plans. Each time a job is scheduled, a task is generated, and the system retains relevant information about task execution, such as logs, running status, output results, and more.

**Environment Management**
-------------------------- 
Used to manage the resources environment required for the system to run, such as managing work nodes and service settings. Work node management oversees the resources during job execution, where workflows are dispatched to work nodes for interpretation and execution. It supports horizontal scaling to multiple work nodes when computational resources are insufficient. Service settings management provides management of HTTP proxies.

**Resource Management** 
------------------------
Utilized for managing various data artifact resources in the system, such as connector management and operator management. Users are allowed to expand connectors and operators based on their requirements. Relevant development standards are currently being organized. Connectors are used to establish connections with data sources, with each type of data source having one or more connector implementations. In some cases, different versions of data sources may require different connector implementations. Operators are used to implement various functionalities, similar to a function in a programming language. Users connect operators to form data processing logic and complete data processing tasks.

**Account Management**
---------------------- 
Used to manage various accounts for users, such as data source accounts and API accounts. Account management provided by HuggingFists can be accessed in the top right corner of the system under "User" -> "Personal Settings" -> "Account Resources". Here, users can centrally manage their various accounts. When creating a data source, users need to fill in the account information, which should be created in advance here. When the account is required, users can select the appropriate account. Initially, this account management model may seem cumbersome, but since many accounts are often reused in multiple data source instances or operator instances, this centralized management approach allows for updating account passwords at minimal cost when necessary for security reasons.

**How to Use HuggingFace**
====================== 
**How to Access Models in Hugging Face via the Inference API**
---------------------------------------------------------- 
To access Hugging Face models through the Inference API, you first need to register an account on the Hugging Face website. You can register an account by following this link: *https://huggingface.co/join*. Once registered successfully, apply for a dedicated access token by navigating to your profile -> Settings -> Access Tokens in the top right corner of the interface. 
Next, in the Hugging Face system (not HuggingFists), go to your profile -> Personal Settings -> Resource Accounts and add a Hugging Face access account.After entering the resource account interface, select to add a resource account, which will bring up the following *screen:* 
需要替换英文图


Choose the Hugging Face type, and fill in the access token you obtained into the "Access token" input box. 
After filling it in, submit the form to create the account successfully. Sometimes, if you are in an intranet environment and cannot directly access the Hugging Face website, you can configure an HTTP proxy to bypass the local network restrictions. 
In the HuggingFists system, navigate to "Environment Management" -> "Service Configuration" module. Click on "Create Service Configuration," which will bring up the following *interface*:
需要替换英文图


Select the "Network HTTP Proxy Service" type, fill in the proxy-related information, and submit to save the proxy configuration.
The preparation work is ready, and we can now try using Hugging Face operators to access models to meet business requirements. Below, let's look at two related examples, one using natural language models and the other using image-related models. Let's start with an example using natural language models.
需要替换英文图



The diagram above illustrates a process example that reads internet news, extracts text content from the news, and then performs three tasks: text summarization, text sentiment classification, and named entity recognition. The red box-selected section in the diagram represents the operator tree that can be used in the process definition; the blue section is the process definition panel; and the green section is the operator's attribute configuration and help area. As shown in the diagram, when selecting a Hugging Face summarization extraction operator, the green box on the right displays its configurable attributes and documentation. The first two boxes in the attribute section input the previously prepared HTTP proxy and Hugging Face account. The subsequent parameter boxes can be set based on the operator's help documentation. Once all processes are dragged and defined in this way, you can click the debug or execute process button at the top of the blue area. Now, let's look at an example using an image-related model.
需要替换英文图



This example can also be detailed in the video mentioned above. It mainly demonstrates three tasks: object recognition, image segmentation, and image classification performed on a single image, involving three different models.
In the examples above, several models are demonstrated. However, which model works best in practice? Users will need to research and compare to determine the most effective model for their specific needs.

**How to Access Locally Deployed Hugging Face Models **
-------------------------------------------------------
Compared to accessing Hugging Face models through the Inference API, deploying models locally requires a longer preparation time but offers more control over costs and security. Below, we briefly introduce how to access locally deployed Hugging Face models using HuggingFists. Firstly, select a model you wish to deploy locally, and then navigate to the model's "Files and versions" page, as shown below:
需要替换英文图


From the image, we can see that there are many files related to the model, typically required for model loading and execution, aside from documentation. Therefore, it's necessary to download all relevant files in advance and store them in the same folder. As Hugging Face does not currently provide a bulk download feature for files, manual downloading of each file is required (this is the most cumbersome aspect of local model deployment). Once the model is downloaded, create the application flow for the model. The process of creating the flow and building it is similar to using Inference API operators, with the only difference being that when selecting operators, you need to choose those with "Pte" in their names. These operators support local model invocation. The main differences between the two types of operators are as follows:
需要替换英文图



In the case of using locally deployed models, there is no longer a need for an HTTP proxy or a Hugging Face account. Instead, you select a local folder path. The downloaded model resides within this folder. Generally, the operator does not pull additional files during the call, but our team found that in some cases, additional model files needed to be downloaded at runtime, which can slow down the operator's startup speed. Additionally, two attributes worth noting are the Python script snippet and the computing device. 
Due to the vast number of models on the Hugging Face website, some models may have subtle differences when called. If there are issues with starting the model, adjusting the Python script snippet to ensure the model loads and executes properly may be necessary. The computing device attribute specifies on which computing unit (CPU or GPU) the model runs on the local machine. This parameter can be set based on the local machine's configuration. Other relevant operator attributes can be configured following the operator's instructions. Once configured, the flow can be driven to use the model locally.

**How to Access Datasets on Hugging Face **
=======================================
The Hugging Face website provides a platform where practitioners worldwide share various datasets for convenient use in model training or testing. HuggingFists offers a connector specifically for the Hugging Face website, allowing users to select suitable datasets and store them in a designated storage system for easy application of this data. To access datasets on Hugging Face, follow these steps:

In the data source functional module, select the Application Tab page and create a Hugging Face data source by selecting the HuggingFace connector and configuring access accounts and access proxies as needed. See the image below:
需要替换英文图


After clicking the "Submit" button, a Hugging Face data source will be created. You can browse the data source by clicking the "View Data" button and select the appropriate datasets.
需要替换英文图



Once you have selected the desired dataset, you can define a data processing flow to read the data from the dataset and store it in a database or file.
需要替换英文图


By following these steps, users can easily access datasets on Hugging Face and incorporate them into their data processing workflows for various applications.


**Reference**
=============
Video Link	Content Description
------------------------------
https://www.bilibili.com/video/BV1Ku4y1r72H/	How to use various models from HuggingFace with low-code. Provides examples of using a natural language model and a computer vision model. The examples involve the process of creating accounts and HTTP proxies.
https://www.bilibili.com/video/BV1G84y1m79m/	How to use various datasets from HuggingFace with low-code.
https://www.bilibili.com/video/BV1oy4y1A7Bd/	How to desaturate, rotate, and crop images using low-code.
https://www.bilibili.com/video/BV1SP411W7kv/	How to extract text information from HTML using low-code.
https://www.bilibili.com/video/BV138411Q7ia/	How to read data from MySQL using low-code.
https://www.bilibili.com/video/BV1qN4y1R7Pt/	How to read data from MySQL using flow variables with low-code.
https://www.bilibili.com/video/BV1ok4y1A7ZM/	How to read data from MySQL using context variables with low-code.
https://www.bilibili.com/video/BV19F411X7D1/	How to extract text from Visio files using low-code.
https://www.bilibili.com/video/BV1RN41127vt/	How to extract relationships from Visio files using low-code.
https://www.bilibili.com/video/BV1qV41157HH/	How to extract text and images from Word documents using low-code.
https://www.bilibili.com/video/BV1X94y1C7Bh/	How to extract tables from Word documents using low-code.
https://www.bilibili.com/video/BV1Tg4y1J7WV/	How to extract text from PDFs using low-code.
https://www.bilibili.com/video/BV1jk4y1V7nK/	How to read data from Excel using low-code.
https://www.bilibili.com/video/BV1Ks4y1c7bz/	How to write data to a MySQL table using low-code.
https://www.bilibili.com/video/BV16u411b79b/	How to clear MySQL tables and perform multi-table writes simultaneously using low-code.
https://www.bilibili.com/video/BV1Ps4y117pS/	How to read and write Avro files using low-code.
https://www.bilibili.com/video/BV14u411Y7Z3/	How to read XML-formatted data.
https://www.bilibili.com/video/BV1D8411o7x6/	How to read JSON-formatted data.
https://www.bilibili.com/video/BV1yV4y1Q7uT/	How to debug processes using breakpoints on the platform.
https://www.bilibili.com/video/BV17k4y1h79M/	How to extract entity names using low-code.
https://www.bilibili.com/video/BV1vw411U7ZV/	How to extract time information from text using low-code.
https://www.bilibili.com/video/BV1Vj411y7j4/	How to extract phone numbers from text using low-code.


