#/bin/bash

echo "Demo on if usage"

ACTION=$1

if [ "$ACTION" == "start" ]; then
    echo -e "\e[33m starting payment service \e[0m"
    exit  0

elif [ "$ACTION" == "stop" ]; then
    echo -e "\e[32m stop payment service \e[0m"
    exit 1

elif [ "$ACTION" == "restart" ]; then
    echo -e "\e[31m restart payment service \e[0m"
    exit 2

else
    echo -e "\e[34m Valid options are Start or stop or restart \e[0m"
    echo -e "\e[35m Example usage \e[0m:\n \t bash scriptname stop "
    exit 3
fi