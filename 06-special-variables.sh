#!/bin/bash

# Special variables gives special properties to your variables

# Here are few of the special variables : $0 to $9 , $? , $# , $* , $@

#ROCKET_NAME=Chandrayaan
a=10
b=20
c=30

echo value of a is $a
echo value of b is $b
echo value of c is $c

echo $0                                  # $0 prints the script name you're executing
echo "Executed script name is : $0"

echo "Name Of Recently launched Rocket In INDIA Is $1"
echo "Popular EV Vehicle in States is $2"
echo "Current topic is $3"

# bash scriptname.sh org1 org2 org3 ..... org9

# bash scriptname.sh  100  200  300  ( like this you can supply a maximum of 9 variables from the command line )
#                      $1   $2   $3


echo $$     # $$ is going to print the PID of the current process
echo $#     # $# is going to print the number of arguments
echo $?     # $? is going to print the exit code of the last command.
echo $*     # $* is going to print used arguments
echo $@     # $@ is going to print used arguments

# echo "Variables used in the current script $*"     # $* is going to print the used variables
# echo $@     # $@ is going to print the used variables