#!/bin/bash
# To run multiple commands, separate them with a semicolon like this:
# 通过用`;`来分隔，可以运行多条命令

echo "Hello Tom" | awk '{$2="Adam"; print $0}'

# 先将”Adam“给第二个字段，然后打印出整行
# results:
# Hello Adam