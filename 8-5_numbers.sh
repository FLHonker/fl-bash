#!/bin/bash
# numbers.sh 数字常量表示方法

# 10进制: 默认情况
let "dec = 32"
echo "decimal number = $dec"    # 32
# 这没什么特别的

# 8进制：以'0'开头
let "oct = 032"
echo "octal number = $oct"      # 26
# 表达式结果是用10进制表示的

#16进制: 以'0x'或者'0X'开头的数字
let "hex = 0x32"
echo "hexadecimal number = $hex"    # 50

# 其他进制: BASE#NUMBER
# BASE的范围在2到64之间.
# NUMBER的值必须使用BSE范围内的符号表示,具体看下面示例:

let "bin = 2#111100111001101"
echo "binary number = $bin"         # 31181

let "b32 = 32#77"
echo "base-32 number = $b32"        # 231

let "b64 = 64#@_"
echo "base-64 number = $b64"        # 4031
# 这个表示法只能工作于受限的ASCII字符范围(2 - 64):
#+ 10个数字 + 26个小写字母 + 26个大写字母 + @ + 

echo 
echo $((36#zz)) $((2#10101010)) $((16#AF16)) $((53#1aA))
# 1295 170 44822 3375
echo

# 重要提示:
# 使用一个超出基数范围的数字的话将会引起一个错误
let "bad_otc = 081"
# 输出错误

exit 0_
