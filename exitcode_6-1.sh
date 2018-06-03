#!/bin/bash
# 退出/退出状态码

echo hello
echo $?     # 退出状态为0，因为命令执行成功、

lskd        # 无效命令
echo $?     # 非零的退出状态，因为命令执行失败

echo

exit 112    # 返回112退出状态给shell
