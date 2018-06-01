#!/bin/bash
# 清除，版本3
# 一个增强和广义的删除logfile的脚本

LOG_DIR=/var/log
ROOT_UID=0      # $UID为0的时候，用户才具有root用户的权限
LINES=50        # 默认的保存行数
E_XCD=66        # 不能修改目录？
E_NOTROOT=67    # 非root用户将以error退出

# 当然要使用root用户来运行
if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi

if [ -n "$1" ]      # 测试是否有命令行参数
then
    lines=$1
else
    lines=$LINES    # 默认，如果不在命令行中指定
fi

cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]  # 或者 if [ "$PWD" != "$LOG_DIR" ]
# 当前目录不在/var/log中？
then
    echo "Can't change to $LOG_DIR"
    exit $E_XCD
fi
# 更有效率的做法是：
# cd /var/log || {
#    echo "Cannot change to necessary directory." >&2
#    exit $E_XCD;
# }

tail -$lines messages > mesg.temp   # 保存logfile消息的最后部分
mv mesg.temp messages       # 变为新的log目录

# cat dev/null > messages
#* 不再需要了，使用上面的方法更安全

cat /dev/null > wtmp    # ': > wtmp'和'> wtmp'具有相同的作用
echo "Logs cleaned up."

exit 0
# 退出之前返回0
# 返回0表示成功
