#!/bin/bash

# The printf command in awk allows you to print formatted output using format
# specifiers.

# The format specifiers are written like this:

# %[modifier]control-letter

# This list shows the format specifiers you can use with printf:

# c              Prints numeric output as a string.

# d             Prints an integer value.

# e             Prints scientific numbers.

# f               Prints float values.

# o             Prints an octal value.

# s             Prints a text string.

# Here we use printf to format our output:


awk 'BEGIN {
    x = 100 * 100
    printf "The result is: %e\n", x}'