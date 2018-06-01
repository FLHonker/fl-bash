#!/bin/bash
#Cleanup
#清除/var/log 下的log文件
#需要root身份运行

#目录变量
LOG_DIR=/var/log
cd $LOG_DIR
cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up."

exit #这个命令是一种正确且合适的退出脚本的方法
