#!/bin/bash
# timed-input.sh
# 定时输入

TIMELIMIT=3     # 此例子中设置为3s

PrintAnswer()
{
    if [ "$answer" = TIMEOUT ]
    then
        echo $answer
    else
        echo "Your favorite veggie is $answer"
        kill $!     # 不再需要后台运行的TimeOn函数了，kill了吧
                    # $! 变量是上一个在后台运行的作业的PID
    fi
}

TimeOn()
{
    sleep $TIMELIMIT && kill -s 14 $$ &     # 后台运行
    # 等待3秒，然后给脚本发送一个信号
}

Int14Vector()
{
    answer="TIMOUT"
    PrintAnswer
    exit 14
}

trap Int14Vector 14     # 定时中断(14)会暗中给定的时间限制

echo "What is your favorite vegetable"
TimeOn
read answer
PrintAnswer

exit 0
