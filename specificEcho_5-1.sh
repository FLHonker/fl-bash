#!/bin/bash
# echo出一些诡异变量

var="(]\\{}\$\""   
echo $var       # '(]\{}$"'
echo "$var"     # 同上

echo

IFS='\'
echo $var       # '(] {}$"'  \字符被空白符替换了
echo "$var"     # '(]\{}$"'

exit 0
