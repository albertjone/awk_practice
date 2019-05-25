#!/bin/bash
# with awk, you can process text files, Awk assigns some variables for each data
# field found.
# 通过Awk，可以处理文本文件，Awk可以将找到的字段赋值给一些变量
# $0 for the whole line. (代表一行)
# $1 for the first field.(代表第一个字段)
# $2 for the second field.(代表第二个字段)
# $n for the nth field.(代表第n个字段)
# The whitespace character like space or tab is the default separator between
# fields in awk.(空格和制表符是awk默认的分隔符)

# The default separator is blank(默认分隔符为空格)
awk '{print $1}' passwd
# results like 
# ─ source 3_using_variables.sh
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin
# sys:x:3:3:sys:/dev:/usr/sbin/nologin

# Set separator to `:`(设置分隔符为`:`)
awk -F : '{print $1}' passwd
# results like:
# root
# daemon
# bin
# sys
# sync
# games
# man