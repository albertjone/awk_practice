#!/bin/bash

# The awk scripting language supports the for loops:

awk '{
total = 0
for (var = 1; var < 5; var++)
{
    total += $var
}
avg = total / 3
print "Average: ", avg
}' numbs_file

# results like:
# Average:  127
# Average:  129.667
# Average:  192.667
# Average:  165.333