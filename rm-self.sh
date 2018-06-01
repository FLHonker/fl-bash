#!/bin/rm
# 自删除脚本
# 当你运行这个脚本时，基本上什么都不会发生，，，当然这个文件消失不见了

WHATEVER=65
echo "This line will never be printed!"

exit WHATEVER   # 不要紧，脚本是不会在这里退出的

# 当然，你还可以在一个README文件开头加上一个`#!/bin/more`，并让他
# 具有执行权限。结果是文档将自动列出自己的内容。
