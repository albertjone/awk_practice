#!/bin/bash

# There are many string functions, you can check the list, but we will examine
# one of them as an example and the rest is the same:

awk 'BEGIN {x = "hi"; print toupper(x)}' 

# results like:
# HI