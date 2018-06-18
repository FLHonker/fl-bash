#!/bin/bash
# broken-link.sh
# 测试那些断掉的链接文件

# 如果没有参数被传递到脚本中，那么就使用当前目录，
# 否则就是用传递进来的参数作为目录来搜索。
[ $# -eq 0 ] && directorys=`pwd` || directorys=$@

# 编写函数linkchk用来检查目录或文件是否链接，
# 并判断这些文件或目录是否存在，然后打印它们所指向的文件。
# 如果传递进来的元素包含子目录，就把子目录也方法linkchk函数中处理(递归处理)
###########################
linkchk() {
    for element in $1/*; do
        [ -h "$elemnet" -a ! -e "$elemnet" ] && echo \"$element\"
        [ -d "$element" ] && linkchk $element 
        # 当然，'-h'用来测试符号链接，'-d'用来测试目录
    done
}

# 把每个传递到脚本的参数都传递到linkchk函数中进行处理。
# 检查是否有可用目录，如果没有，那么就打印错误信息和使用信息。
#######################
for directory in $directorys; do
    if [ -d $directory ]
    then
        linkchk $directory
    else
        echo "$directory is not a directory."
        echo "Usage: $0 dir1 dir2 ..."
    fi
done

exit 0
