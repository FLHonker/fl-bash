#!/bin/bash
# gcd.sh
# 最大公约数, 使用Euclid算法
# Euclid算法采用连续除法
#+ 在每一次循环中,被除数 <-- 除数,除数 <-- 余数,
#+ 直到 余数=0.在最后一次循环中,gcd = 余数.

# -----------------------------------
# 参数检查
ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` first-number second-number"
    exit $E_BADARGS
fi
# ------------------------------------

gcd ()
{
    dividend=$1
    divisor=$2
    remainder=1

    until [ "$remainder" -eq 0 ]
    do
        let "remainder = $dividend % $divisor"
        dividend=$divisor
        divisor=$remainder
    done
}

gcd $1 $2
echo; echo "GCD of $1 and $2 = $dividend"; echo

# 未检查参数的可用性,必须是整数
exit 0
