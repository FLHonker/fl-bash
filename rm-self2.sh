#!/bin/rm
# 自删除脚本
# 当你运行这个脚本时，基本上什么都不会发生，，，当然这个文件消失不见了

WHATEVER=65
echo "This line will never be printed!"

exit WHATEVER   # 不要紧，脚本是不会在这里退出的
