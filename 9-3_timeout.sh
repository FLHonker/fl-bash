#!/bin/bash
# timeout.sh
# 再来一个，定时输入

INTERVAL=5  # 超时间隔

timeout_read()
{
    timeout=$1
    varname=$2
    old_tty_settings=`stty -g`
    stty -icanon min 0 time ${timeout}0
    eval read $varname
    stty "$old_tty_settings"
}

echo; echo -n "What's your name?Quik!"
timeout_read $INTERVAL your_name

# 这种方法可能不是每种终端类型上都可以正常使用的，
#+ 最大的超时时间依赖于具体的中断类型，通常是25.5s

echo
if [ ! -z "$your_name" ]    # 如果在超时之前名字被输入...
then
    echo "Your name is $your_name"
else
    echo "Timed out."
fi

echo
# 这个脚本的行为与脚本"9-2_timed-input.sh"的行为有些不同，
# 每次按键，计时器都会重置。
exit 0
