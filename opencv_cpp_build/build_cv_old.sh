#!/bin/bash
# @author: Frank Liu
# @time: 2018-06-04
# @description: 编译链接opencv源码的脚本,输入参数为*.cpp或*.c文件，
#+ 默认输出程序名与源码文件名一致。
# 使用方法：
# ./build_cv.sh input.cpp(.c) [-o outfile]
if [ -z "$1" ]
then
    echo "input parameter not found!"
    exit -1
fi
filename="$1"
outfile="${filename%.*}"
if [ "$2" == "-o" ]
then
    if [ -z "$3" ]
    then
        echo "lack of outfile name ofter \"-o\"!"
        exit -2
    fi
    outfile="$3"
fi
g++ "$1" -o "$outfile" `pkg-config --cflags --libs opencv`
if [ $? == 0 ]
then
    echo "Build cv code successfully!"
fi

exit 0
