#!/bin/bash
# 算数测试需要使用((  ))
# (( ... ))结构可以用来计算并测试算数表达式的结果
# 退出状态将会与[ ... ]结果完全相反!

echo "以下结果均为相反!"
echo

(( 0 ))
echo "Exit status of \"(( 0 ))\" is $?."

(( 1 ))
echo "Exit status of \"(( 1 ))\" is $?."

(( 5 > 4 ))
echo "Exit status of \"(( 5 > 4 ))\" is $?."

(( 5 - 5 ))
echo "Exit status of \"(( 5 - 5 ))\" is $?."

(( 5 / 4 ))
echo "Exit status of \"(( 5 / 4 ))\" is $?."

(( 1 / 2 ))
echo "Exit status of \"(( 1 / 2 ))\" is $?."

(( 1 / 0 )) 2>/dev/null     # 隐藏错误提示
echo "Exit status of \"(( 1 / 0 ))\" is $?."

# 2>/dev/null 一句什么作用？
# 如果删掉会怎样？
# 然后删除这句，然后运行脚本
exit 0
