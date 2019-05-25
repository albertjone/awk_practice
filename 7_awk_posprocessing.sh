#!/bin/bash

# Awk is good to add some footer for your result. It provides `END` to help
# you do this.
# 通过 `END` 关键词我们可以为我们的结果加一些页脚。

awk 'BEGIN {print "The File Contents:"} 
{print $0} 
END {print "File footer"}' myfile


# results like:
# The File Contents:
# This is 1th test;
# This is 2th test;
# This is 3th test;
# ...
# This is the last test;
# File footer

# Tips
# if you do 
# awk 'BEGIN 
# {print "The File Contents:"} 
# {print $0} 
# END {print "File footer"}' myfile
# you will get error like
# awk: syntax error at source line 2
#  context is
#         BEGIN  >>> 
#  <<< 
# awk: bailing out at source line 3

# Next, we will combine BEGIN and END together, it likes below.


export script='BEGIN {
 
print "Users and thier corresponding home"
 
print " UserName \t HomePath"
 
print "___________ \t __________"
 
FS=":"
 
}
 
{
 
print $1 "  \t  " $6
 
}
 
END {
 
print "The end"
 
}
'
awk $script passwd

# results like:
# Users and thier corresponding home
#  UserName        HomePath
# ___________      __________
# root      /root
# daemon            /usr/sbin
# bin       /bin
# sys       /dev
# sync      /bin
# games     /usr/games
# man       /var/cache/man
# lp        /var/spool/lpd