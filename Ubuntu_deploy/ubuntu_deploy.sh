#!/bin/bash
#/***********************************************
# Copyright (c) 2018, Wuhan
# All rights reserved.
#
# @Filename: ubuntu_deploy.sh
# @Version：V1.0
# @Author: Frank Liu - frankliu624@gmail.com
# @Description: 史上最伟大Ubuntu14.04+ 开发办公环境一键部署方案
# @Create Time: 2018-11-04 15:15:28
# @Last Modified: 2018-11-04 15:15:28
#***********************************************/

# 要求使用root权限运行脚本
ROOT_UID=0
if[ `id -u` -ne $ROOT_UID ]
then
    echo "执行权限不够!请使用sudo运行！"
    exit 1
fi

######### 安装部署前的准备工作 ##########

# 记录工作目录`Ubuntu_deploy/`
workDir=$PWD
# 在当前目录下创建packages目录存储下载的安装包
if [ ! -d packages ]; then  
　　mkdir packages
fi
# 在当前user的主目录下创建dev目录作为所有软件的安装目录
mkdir ~/dev

# 1. 为便于后续安装步骤需要，首先安装一些必要的命令行工具: git, ssh, g++, cmake, npm, zip, unzip, rar, unrar, tar, curl, wget
sudo apt-get install git ssh g++ cmake npm zip unzip rar unrar tar curl wget

# 2. 双系统启动grub2主题美化：`Griffin-Grub-Remix`
# 主题安装包的URL
cd packages
if [ ! -f Griffin-Grub-Remix.zip ];then
    url_grubtheme="https://github.com/FLHonker/fl-bash/raw/master/Ubuntu_deploy/packages/Griffin-Grub-Remix.zip"
    wget ${url_grubtheme}
fi
# 解压
unzip -o Griffin-Grub-Remix.zip
# 进入目录安装
cd Griffin-Grub-Remix
sudo ./install.sh

# 3. 卸载自带不常用软件包
# 卸载libreoffices
sudo apt-get remove libreoffice-common
# 删除Amazon广告图标
sudo rm -f /usr/share/applications/com.canonical.launcher.amazon.desktop
sudo rm -f /usr/share/applications/ubuntu-amazon-default.desktop
# 删除多余的软件
sudo apt-get remove unity-webapps-common empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines gnome-orca webbrowser-app gnome-sudok onboard deja-dup landscape-client-ui-install

# 4. 设置右键新建常用模板文件
# *.docx, *.xlsx, *.pptx这些会在安装wps后自动创建，这里我们只帮您创建文本文件模板
# 根据系统语言进入模板文件存放目录
if [ -d ~/Templates ];then
    cd ~/Templates
    touch txt.txt
    touch markdown.md
elif [ -d ~/模板 ];then
    cd ~/模板
    touch txt.txt
    touch markdown.md
fi

# 5. dev开发环境
# C++ dev
sudo apt install gcc g++ make build-essential
# Python, py的numpy、pyTorch、turtle等库和包默认都是安装使用Python3的
sudo apt install python python3 python-pip python3-pip
# numpy for python2-3 setup
sudo pip install numpy
sudo pip3 isntall numpy
# pyTorch-cpu for python3.6 setup
sudo pip3 install http://download.pytorch.org/whl/cpu/torch-0.4.1-cp36-cp36m-linux_x86_64.whl
sudo pip3 install torchvision
# turtle-0.0.2 for python2-3 setup
sudo pip install turtle
# for python3,需要下载源码手动修改setup.py文件后安装
cd $workDir/packages
wget 
unzip turtle-0.0.2.zip
cd turtle-0.0.2
sudo pip3 install -e turtle-0.0.2

# 如果url失效导致下载失败，则使用备用url
if [ $? -ne 0 ];then
   
fi