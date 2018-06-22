#!/bin/bash
# am-i-root.sh
# 我是root吗？
# Test $UID

ROOT_UID=0      # root的UID为0

if [ "$UID" -eq "$ROOT_UID" ]
then
    echo "You are root."
else
    echo "You are just an ordinary user (but mom love you just the same)."
fi

exit 0

# =============================================== #
# 下边的代码不会再执行，因为脚本在上面的exit已经退出了

# 下边是另一种判断root用户的方法：
ROOTUSER_NAME=root
username=`id -nu`   # 或者username=`whoami`
if [ "$username" = "$ROOTUSER_NAME" ]
then
    echo "Rooty, toot, toot.You are root."
else
    echo "You are just a regular fella."
fi

