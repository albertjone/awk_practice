#!/bin/bash

# Variable names could be anything, but it can’t begin with a number.
# 变量可以是除了以数字开头的任何东西。

awk '
 
BEGIN{
 
test="Welcome to LikeGeeks website"
 
print test
 
}'

# results like:
# Welcome to LikeGeeks website