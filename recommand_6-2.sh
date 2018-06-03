#!/bin/bash
# 反转一个条件的用法

true    # "true"是内建命令
echo "exit status of \"true\" = $?"     # 0

! true
echo "exit status of \"! true\" = $?"   # 1
# 注意; "!"命令需要一个空格
# ! true 将导致"command not found"错误
# 如果一个命令以'!'开头，那么会启用Bash的历史机制。

true
!true
# 这次就没有错误了，也没有反转结果
#+ 它只是重复了之前的命令(true).

exit 0
