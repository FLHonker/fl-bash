#!/bin/bash
# 使用&&和||进行混合条件测试

a=24
b=47

if [ "$a" -eq 24 ] && [ "$b" -eq 47 ]
then
    echo "Test #1 succeeds."
else
    echo "Test #2 fails."
fi

#ERROR:     if [ "$a" -eq 24 && "$b" -eq 47 ]
#+ 尝试运行'[ "$a" -eq 24'时,未找到匹配符']',所以失败了.
#
# 注意,if [[ "$a" -eq 24 && "$b" -eq 47 ]] 也能ok
# 双中括号的if-test结构要比单中括号的更灵活
# (在第7行的&&和17行的&&具有不同的含义)

if [ "$a" -eq 98 ] || [ "$b" -eq 47 ]
then
    echo "Test #2 succeeds."
else
    echo "Test #2 fails."
fi

# -a和-o选项提供了一种可选的混合条件测试方法
if [ "$a" -eq 24 -a "$b" -eq 47 ]
then
    echo "Test #3 succeeds."
else
    echo "Test #3 fails."
fi

if [ "$a" -eq 98 -o "$b" -eq 47 ]
then
    echo "Test #4 succeeds."
else
    echo "Test #4 fails."
fi

a=rhino
b=crocodile
if [ "$a" = rhino ] && [ "$b" = crocodile ]
then
    echo "Test #5 succeeds."
else
    echo "Test #5 fails."
fi

exit 0
