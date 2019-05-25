#!/bin/bash

# In the previous examples we've used $0, $1, $6 to extract the data fields, we
# also deal with the field separator FS.
# 在前几个例子中，我们不仅仅使用了$0, $1, $6来截取数据，也使用了FS分隔符。
# Except these built-in variables, there are some more, showing belowe:
# 除了上面这些自建变量外，还有如下的一些变量，但不是全部：
# FIELDWIDTHS     Specifies the field width.

# RS     Specifies the record separator.

# FS     Specifies the field separator.

# OFS  Specifies Output Field Separator Variable(指定输出字段的变量值).

# ORS  Specifies Output Record Separator Variable(指定输出).

# By default, the OFS variable is the space, you can set the OFS variable to
# specify the separator you need:
# 通常OFS默认值为空格，你可以设置你需要的OFS值

awk 'BEGIN {FS=":"; OFS="-"} {print $1, $6, $7}' passwd

# results like:
# root-/root-/bin/bash
# daemon-/usr/sbin-/usr/sbin/nologin
# bin-/bin-/usr/sbin/nologin
# sys-/dev-/usr/sbin/nologin
# sync-/bin-/bin/sync
# games-/usr/games-/usr/sbin/nologin
# man-/var/cache/man-/usr/sbin/nologin
# lp-/var/spool/lpd-/usr/sbin/nologin
# mail-/var/mail-/usr/sbin/nologin
# news-/var/spool/news-/usr/sbin/nologin


# Sometimes, the fields are distributed without a fixed separator. In these cases,
# FIELDWIDTHS variable solves the problem.
# 有些时候，一些字段没有固定的分隔符。在这种情况下，可以通过 `FIELDWIDTHS` 这个自建变量来实现


awk 'BEGIN {print "FIELDWIDTHS Example:"} 
{FIELDWIDTHS="3 4 3"} {print $1, $2, $3}' test_data

# results like:
# FIELDWIDTHS Example
# 1235.96521  
  
# 927-8.3652  
  
# 36257.8157  


# Person Name
# 
# 123 High Street
# 
# (222) 466-1234
 
 
 
# Another person
# 
# 487 High Street
# 
# (523) 643-8754

# In the above example, awk fails to process fields properly because the fields
# are separated by newlines and not spaces.
# 在上面这个例子中，awk，在处理字段时会因为这些字段不是用空格而是空行分隔而无法处理。

# You need to set the FS to the newline (\n) and the RS to a blank text, so empty
# lines will be considered separators.
# 你通过设置FS的值为新行和RS为空白，这时空行会被考虑为分隔符

awk 'BEGIN {FS="\n"; RS=""; print "FS Example:";} {print $1, $3}' addresses
