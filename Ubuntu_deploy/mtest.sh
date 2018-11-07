#!/bin/bash
#/***********************************************
# Copyright (c) 2018, Wuhan
# All rights reserved.
#
# @Filename: mtest.sh
# @Version：V1.0
# @Author: Frank Liu - frankliu624@gmail.com
# @Description: 模块测试
# @Create Time: 2018-11-07 08:38:40
# @Last Modified: 2018-11-07 08:38:40
#***********************************************/
if [ -d ~/Templates ];then
    cd ~/Templates
    touch txt2.txt
    touch markdown2.md
elif [ -d ~/模板 ];then
    cd ~/模板
    touch txt2.txt
    touch markdown2.md
fi