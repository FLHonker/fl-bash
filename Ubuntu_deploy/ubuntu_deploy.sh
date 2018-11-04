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

# 记录当前目录`Ubuntu_deploy/`
currentDir = $PWD

# 1. 为便于后续安装步骤需要，首先安装一些必要的命令行工具: git, ssh, g++, cmake, npm, zip, unzip, rar, unrar, tar, curl, wget
sudo apt-get install git ssh g++ cmake npm zip unzip rar unrar tar curl wget

# 2. 双系统启动grub2主题美化：`Griffin-Grub-Remix`
# 主题安装包的URL
url_grubtheme=`https://www.gnome-look.org/p/1237117/startdownload?file_id=1536064271&file_name=Griffin-Grub-Remix.zip&file_type=application/zip&file_size=10351295&url=https%3A%2F%2Fdl.opendesktop.org%2Fapi%2Ffiles%2Fdownload%2Fid%2F1536064271%2Fs%2F185f7c9e247e04bf2db90e7df0090335%2Ft%2F1541326472%2Fu%2F%2FGriffin-Grub-Remix.zip`
# 主题安装包的备用URL
url2_grubtheme=``
