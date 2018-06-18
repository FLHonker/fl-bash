#!/bin/bash
# 整型or字符串？

a=2345          # 整数
let "a += 1"
echo "a = $a"   # a = 2346
echo

b=${a/23/BB}    # 将"23"替换成"BB",变量b从整型变为字符串
echo "b = $b"   # b = BB46
declare -i b    # 即使使用declare命令也不会对此有任何帮助
echo "b = $b"   # b = BB46

let "b += 1"    # BB35 + 1 =
echo "b = $b"   # b = 1
echo

c=BB34
echo "c = $c"   # c = BB34
d=${c/BB/23}     # 将"BB"替换成"23"，使得变量d变为一个整型
echo "d = $d"   # d = 2334
let "d += 1"    # 2334 + 1 =
echo "d = $d"   # d = 2335
echo

# null变量会如何呢？
e=""
echo "e = $e"   # e = 
let "e += 1"    # 算数操作允许一个null变量
echo "e = $e"   # e = 1
echo

# 如果没有声明变量会怎样？
echo "f = $f"   # f = 
let "f += 1"    # 算数操作能通过吗？
echo "f = $f"   # f = 1
echo

# 所以说Bash中的变量都是不区分类型的
exit 0
