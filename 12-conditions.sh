#!/bin/bash

# conditions helps us to execute something only if some factor is true and if that factor is false then that something won't be executed.

# Syntax of case 
# case $var in
#     opt1) commands-x ;;
#     opt2) commands-y ;;
# esac

Action=$1

case $Action in
    start)
        echo -e "\e[32m starting payment service \e[0m"
        exit 0
        ;;
    stop)
        echo -e "\e[31m Stopping payment service \e[0m"
        exit 1
        ;;
    restart)
        echo -e "\e[33m restarting payment service \e[0m"
        exit 2
        ;;
    *)
        echo -e "\e[34m Valid options are Start or stop or restart \e[0m"
        echo -e "\e[35m Example usage \e[0m:\n \t bash scriptname stop "
        exit 3
        ;;
esac 