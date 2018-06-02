#!/bin/bash
# 显示日期时间，列出所有登录用户，给出系统更新时间，
# 最后把信息保存到log.md中。

# tee命令的使用
# read from standard input and write to standard output and files.

# date格式化显示日期和时间
echo `date "+%Y-%m-%d %H:%M:%S"` | tee -i log.md
# date -d today
# date -d now

# 列出所有登录的user
echo `w -h` | tee -a log.md       # -u, -h, -s
# who
# users

# 给出系统更新时间
echo `uname -a` | tee -a log.md
