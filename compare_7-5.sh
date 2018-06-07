#!/bin/bash
# 算术比较与字符串比较

a=4
b=5
# 这里的a和b既可以认为是整数，也可以认为是字符串，
#+ 因为bash不区分变量类型。

if [ "$a" -ne "$b" ]
then
    echo "$a is not equal to $b."
    echo "(arithmetic comparison)"
fi
echo

if [ "$a" != "$b" ]
then
    echo "$a is not equal to $b."
    echo "(string comparison)"
fi

exit 0
