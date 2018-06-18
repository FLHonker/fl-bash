#!/bin/bash
# test, /usr/bin/test, [  ] 和/usr/bin/[ 都是等价命令

if test -z "$1"
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi
echo

if /usr/bin/test -z "$1"    # 与内建的"test"命令结果相同
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi
echo

if [ -z "$1" ]      # 与上面两个代码块作用相同
# if [ -z "$1"  # 应该能够运行，但是不建议这么做，bash可能会报错。
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi
echo

if /usr/bin/[ -z "$1" ]     # 再来一个，与上边的代码块作用相同
# if /usr/bin/[ -z "$1"  # 应该能够运行，也不建议这么做，可能会报错
                         # Bas3.x版本应该修复了这个bug.
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi
echo

exit 0
