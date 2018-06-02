#!/bin/bash
# “裸体”变量

a=865
echo "The value \"a\" is $a."

# 使用let赋值
let a=16+5
echo "The value \"a\" is now $a."

echo

# 在'for'循环中(事实上，是一种伪赋值):
echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 10
do
    echo -n "$a "
done
echo

# 使用'read'命令进行赋值(这也是一种赋值类型)
echo -n "Enter \"a\" "
read a
echo "The value \"a\" is now $a."
echo

exit 0
