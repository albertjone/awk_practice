#!/bin/bash

# we can use the while in the awk script

# cat numbs_file

# 124 127 130

# 112 142 135

# 175 158 245

# 118 231 147


awk '{
sum = 0;
i = 1;
while(i < 5)
{
    sum += $i; 
    i++
}
averge = sum / 3
print "averge=", averge 
}' numbs_file
