#!/bin/bash

<<COMMENT
if condition is ideally available in 3 formats :
    1) Simple If
    2) If Else 
    3) Else If


1) Simple If :

    if [ expression ] : then
            commands
    fi 

    command are going to be executed only if the expression is true.

* What will happen if the expression or false ? Simple, command won't be executed.

2) If-Else

    if [ expression ]; then

            command 1

    else

            command 2
         
    fi

* If expression is true, then command 1 will be executed. If the expression is not true, then command 2 will be executed.

3) Else-If

    if [ expression1 ]; then

            command 1

    elif [ expression2 ]; then

            command 2

    elif [ expression3 ]; then

            command 3

    else

            command 4
         
    fi

COMMENT

# What is an expression ??? whenever you're using operators to perform something, that's reffered as an expression.


