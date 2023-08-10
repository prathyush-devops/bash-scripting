#!/bin/bash

# what is a variable ??? It's generally used to hold some values dynamically.

# This is how we declare variables and here 'a' 'b' 'c' are variables which holda 10 20 xyz values respectively
a=10                # a is a integer
b=20                # b is aslo an interger
c=xyz               # c is a string 
DATE="04AUG2023"    # Hardcoding

# There is no concept of data types in Linux or shellscripting.
# By default, everything is a string.

# If your input or variables are having special characters, enclose them always in Double Quotes.

# How can I print the variable.
# Using special characters, we are going to print the value of the variables.

# $ : special character is used to print the value of the variable
# echo $a

echo a
echo "Printing the value of a $a"         # $a and ${a} : both are same. Prefer to use in flower brackets
echo "Printing the value of a ${a}"

echo "printing the value of x:$x"

echo "Today's date is $DATE"
# [ ] : Square bracket
# ( ) : Parantesis
# { } : flower bracket

