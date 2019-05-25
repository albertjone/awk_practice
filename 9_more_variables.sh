#!/bin/bash

# There are some other variables that help you to get more information:
# 有更多的选项来帮助我们获取更多的消息：
# ARGC     Retrieves the number of passed parameters(获取传入参数的数量).

# ARGV     Retrieves the command line parameters(获取命令行参数).

# ENVIRON     Array of the shell environment variables and corresponding values
# (shell环境变量和他们对应的值).

# FILENAME    The file name that is processed by awk(awk处理的文件名称).

# NF     Fields count of the line being processed(当前处理行的的字段数量).

# NR    Retrieves total count of processed records(获取被处理记录的总数).

# FNR     The record which is processed(处理的记录).

# IGNORECASE     To ignore the character case(忽略大小写).

awk 'BEGIN {print ARGC, ARGV[1]}' myfile

# print the variable PATH from ENVIRON
awk '
BEGIN {
print ENVIRON["PATH"]
}'

# You can use bash variables without ENVIRON variables like this:
echo | awk -v home=$HOME '{print "My home " home}'

# The NF variable specifies the last field in the record without knowing its 
# position:
awk 'BEGIN {FS=":"; OFS=":"} {print $1, $NF}' passwd

# results like:
# gnats:/usr/sbin/nologin
# nobody:/usr/sbin/nologin
# systemd-timesync:/bin/false
# systemd-network:/bin/false
# systemd-resolve:/bin/false

awk 'BEGIN {FS=";"} {print $1, "FNR="FNR, "NR="NR}' myfile myfile

# results like:
# This is 1th test FNR=1 NR=1
# This is 2th test FNR=2 NR=2
# This is 3th test FNR=3 NR=3
# ... FNR=4 NR=4
# This is the last test FNR=5 NR=5
# This is 1th test FNR=1 NR=6
# This is 2th test FNR=2 NR=7
# This is 3th test FNR=3 NR=8
# ... FNR=4 NR=9
# This is the last test FNR=5 NR=10