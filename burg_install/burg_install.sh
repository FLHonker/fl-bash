#!/bin/bash
#/***********************************************
# Copyright (c) 2018, Wuhan
# All rights reserved.
#
# @Filename: burd_install.sh
# @Version：V1.0
# @Author: Frank Liu - frankliu624@gmail.com
# @Description: burg自定义Ubuntu/Windows双系统引导菜单主题
# @Create Time: 2018-11-02 12:08:40
# @Last Modified: 2018-11-02 12:08:40
#***********************************************/

# 1.添加源
sudo add-apt-repository ppa:n-muench/burg
# 2.更新源
sudo apt-get update
# 3.安装主程序、主题以及模拟器
sudo apt-get install burg burg-themes burg-emu
# 4.检测系统生成的burg.cfg引导文件
sudo burg-install "(hd0)"
# 5.更新burg
sudo update-burg
# 6.预览效果
sudo burg-emu

