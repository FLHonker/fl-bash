#!/bin/bash
# 位置参数
# 作为用例，调用这个脚本至少需要10个参数，比如
#+ ./locationParameter.sh 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10
echo
echo "The name of this script is \"$0\"." 
# 添加./表示当前目录
echo "The name of this script is \"`basename $0`\"."
# 去掉路径名，剩下文件名，参见('basenam')
echo

if [ -n "$1" ]  # 测试变量被引用
then
    echo "Parameter #1 is $1."   # 需要引用才能转义#
fi

if [ -n "$2" ]
then
    echo "Parameter #2 is $2."
fi

if [ -n "$3" ]  # 测试变量被引用
then
    echo "Parameter #3 is $3."   # 需要引用才能转义#
fi

# ...
if [ -n "${10}" ]  # 大于9的参数必须用{}括起来
then
    echo "Parameter #10 is ${10}."   # 需要引用才能转义#
fi
echo "--------------------------------------"
echo "All the command-line parameters are: "$*""

if [ $# -lt "$MINPARAMS" ]
then
    echo
    echo "This script needs at least $MINPARAMS command-line arguments!"
fi
echo

exit 0
