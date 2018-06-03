#!/bin/bash
# 使用shift命令来逐步存取所有位置参数

until [ -z "$1" ]   # 知道所有位置参数都被存取完...
do
    echo -n "$1 "
    shift
done

echo 

exit 0
