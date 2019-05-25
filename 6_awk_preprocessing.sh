#!/bin/bash

# Awk is good to add some header for your result. It provides `BEGIN` to help
# you do this.
# 通过 `BEGIN` 关键词我们可以为我们的结果加一些页眉。

 awk 'BEGIN {print "The File Contents:"} {print $0}' myfile

# results like:
# The File Contents:
# This is 1th test;
# This is 2th test;
# This is 3th test;
# ...
# This is the last test;