#!/bin/bash
# What's true?

if [ 0 ]    # zero
then
    echo "0 is true."
else
    echo "0 is false."
fi
echo

echo "Testing \"1\":"
if [ 1 ]    # 1
then
    echo "1 is true."
else
    echo "1 is false."
fi
echo

echo "Testing \"-1\":"
if [ -1 ]   # -1
then
    echo "-1 is true."
else
    echo "-1 is false."
fi
echo

echo "Testing \"NULL\":"
if [  ]     # null,空状态
then
    echo "NULL is true."
else
    echo "NULL is false."
fi
echo

echo "Testing \"xyz\":"
if [ xyz ]      # 字符串
then
    echo "Random string is true."
else
    echo "Random string is false."
fi
echo

echo "Testing \"\$xyz\":"
if [ $xyz ]     # 未初始化变量
then
    echo "Uninitialized variable is true."
else
    echo "Uninitialized variable is false."
fi
echo

echo "Testing \"-n \$xyz\":"
xyz=        # 初始化了但是赋值为null
if [ -n "$xyz" ]
then
    echo "Null variable is true."
else
    echo "Null varible is false."
fi
echo

# 什么时候"false"为真？

echo "Testing \"false\":"
if [ "false" ]      # 看起来false不过是一个字符串
then
    echo "\"false\" is true."
else
    echo "\"false\" is false."
fi
echo

echo "Testing \"\$false\":"
if [ "$false" ]
then
    echo "\"\$false\" is true."
else
    echo "\"\$false\" is false."
fi
echo

exit 0

