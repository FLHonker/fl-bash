#!/bin/bash
# git一键提交push脚本，仅限于当前目录使用！

if [ "$1" == "" ]
then
    echo "no commit message!"
    echo "do nothing,"
    exit 1
fi

git add .
git commit -m ""$1""
git push origin master
echo "update successfully!"

exit 0
