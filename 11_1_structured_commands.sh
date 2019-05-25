#!/bin/bash

# The awk scripting language supports if conditional statement
# (awk脚本语言支持条件语句).

# The testfile contains the following:

# 10

# 15

# 6

# 33

# 45

awk '{if ($1 > 10) print  $1}' number_file

# results like:
# 15
# 33
# 45

awk 'BEGIN {print "IF ELSE TESET:"}
{ if ($1 < 10)
{x = 3 * $1
print x}
else 
{print $1}
}' number_file

# results like: 
# IF ELSE TESET:
# 10
# 15
# 18
# 33
# 45

# TIPS: blank line will be zero