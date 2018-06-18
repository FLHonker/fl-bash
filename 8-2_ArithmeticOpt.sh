#!/bin/bash
# 使用算术操作符
# 使用10种不同的方法计数到11

n=1; echo -n "$n "
let "n = $n +1"     # method-1 let "n = n+1" 也ok
echo -n "$n "

: $((n = $n + 1))    # method-2
# ";"是必需的,因为如果没有":"的话,
#+ Bash将会尝试把"$((n = $n + 1))"解释为一个命令
echo -n "$n "

(( n = n + 1 ))     # method-3
echo -n "$n "

n=$(($n + 1))       #method-4
echo -n "$n "

: $[ n = $n + 1 ]   # method-5
# 同样,":"是必需的.
echo -n "$n "

n=$[ $n + 1 ]       # method-6
# 即使n被初始化为字符串,这句也能正常运行
#* 应该尽量避免这种类型的结构,已被废弃
echo -n "$n "

# 现在开始C-style增量操作

let "n++"       # method-7, let "++n"也ok
echo -n "$n "

(( n++ ))       # method-8, (( ++n ))也ok
echo -n "$n "

: $[ n++ ]      # method-9, : $[ ++n ] 也ok
echo -n "$n "

: $(( n++ ))    # method-10, : $(( ++n )) 也ok
echo -n "$n "

echo

exit 0
