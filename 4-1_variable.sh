#!/bin/bash
# 变量赋值和替换

a=385
hello=$a
# 强烈注意：在赋值的时候等号后面千万不要有空格！
# 带空格会让shell解释为一个命令带一个参数

echo hello
echo $hello
echo ${hello}   # 同上

echo "$hello"
echo "${hello}"

echo

hello="A B  C   D"
echo $hello     # A B C D
echo "$hello"   # A B  C   D
# 上述两个echo结果不同
# 引用一个变量将保留其中的空白，如果是变量替换就不会保留了

echo

echo '$hello'   # $hello
# 全引用的作用将会导致"$"被解释诶单独的字符，而不是变量前缀

hello=      # 设为空值
echo "\$hello(null value) = $hello"

# 注意：可以在同一行上设置多个变量，但是必须以空白分隔，
#+ 慎用，这么做会降低可读性，并且不可移植。
var1=21 var2=32 var3=45
echo "var1=$var1 var2=$var2 var3=$var3"
# 在老版本的"sh"上可能会引起问题
#------------------------------------------------
echo; echo
numbers="one two three"
other_numbers="1 2 3"
# 如果在变量中存在空白，就必须加上引用
# other_numbers=1 2 3 将给出错误信息
echo "numbers=$numbers"
echo "other_numbers=$other_numbers"

# 不过也可以采用将空白转义的方法
mixed_bag=2\ ---\ Whatever
echo "$mixed_bag"   # 2 --- whatever
echo; echo

echo "uninitialized_var=$uninitialized_var"
# uninitialized_var为空值null
uninitialized_var=      # 声明，但是没有初始化这个变量
echo "uninitialized_var=$uninitialized_var"  # 还是一个空值null

uninitialized_var=23        # 赋值
unset uninitialized_var     # unset
echo "uninitialized_var=$uninitialized_var"  # 还是一个空值null
echo

exit 0
