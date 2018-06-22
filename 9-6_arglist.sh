#!/bin/bash
# arglist.sh
# 通过$@和$*列出所有的参数
# 多使用几个参数来调用这个脚本

E_BADARGS=65

if [ ! -n "$1" ]
then
    echo "Usage: `basename $0` arg1 arg2 etc."
    exit $E_BADARGS
fi

#---------------------------------------
echo
index=1     # 起始计数

echo "Listing args with \"\$*\":"
for arg in "$*"     # 如果"$*"不被""引用,那么将不能正常工作
do
    echo "Arg #$index = $arg"
    let "index+=1"
done     # $*将所有参数看成一个单词
echo "Entire arg list seen as single word."

#---------------------------------------
echo
index=1     # 重置计数

echo "Listing args with \"\$@\":"
for arg in "$@"
do
    echo "Arg #$index = $arg"
    let "index+=1"
done    # $@把每个参数都看成是单独的单词

#-----------------------------------------
echo
index=1     # reset counter

echo "Listing args with \$*(unquoed):"
for arg in $*
do
    echo "Arg #$index = $arg"
    let "index+=1"
done    # 未引用的$*将会把参数看成单独的单词
echo; echo "Arg list seen as separate words."

exit 0
