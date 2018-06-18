#!/bin/bash
# 用'more'命令来查看gzip文件

NOARGS=65
NOTFOUND=66
NOTGZIP=67

if [ $# -eq 0 ]     # 与if [ -z "$1" ]效果相同
# 注意：上边这句注释有问题，$1是可以存在的，可以为空，
#+ 如：gzipmore "" arg2 arg3
then
    echo "Usage: `basename $0` filename" >&2
    # 错误消息输出到stderr
    exit $NOARGS
    # 返回65作为脚本的退出状态值
fi

filename=$1
if [ ! -f "$filename" ]     # 将$filename引用起来,这样允许其中包含空白字符
then
    echo "File $filename not found!" >&2
    exit $NOTFOUND
fi

if [ ${filename##*.} != "gz" ]    # 取文件后缀
then
    echo "File $filename is not a gzipped file!"
    exit $NOTGZIP
fi

zcat $1 | more
# 使用过滤命令'more',当然也可以使用'less'

exit $?
