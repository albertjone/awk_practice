#!/bin/bash
# You can type your awk script in a file and specify that file using the -f
# option.
# 通过使用-f选项可以使用包含awk脚本的文件

# script like(脚本如下):
# {print $1 " home at " $6}
# it can also be:
# {
# 
# text = $1 " home at " $6
#
# print text  
#
# }

awk -F: -f simple_script passwd

# results like:

# root home at /root
# daemon home at /usr/sbin
# bin home at /bin
# sys home at /dev
# sync home at /bin
# games home at /usr/games
# man home at /var/cache/man
# lp home at /var/spool/lpd
# mail home at /var/mail
# news home at /var/spool/news