#!/bin/bash
# 定时read

TIMELIMIT=4     # 4s

read -t $TIMELIMIT variable <&1
# 对于Bash 1.x 和Bash 2.x就需要"<&1"了
#+ Bash 3.x 就不需要了

echo
if [ -z "$variable" ]
then
    echo "Timed out,variable still unset."
else
    echo "variaable = $variable"
fi

exit 0
