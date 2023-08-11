#!/bin/bash

set -e

USER_ID=$(id -u)
COMPONENT=mongodb
LOGFILE="/tmp/${COMPONENT}.log"

if [ $USER_ID -ne 0 ] ; then
    echo -e "\e[31m Script is expected to execcte by the root user or with a sudo privilage \e[0m \n \t Example: sudo bash wrapper.sh frontend"
    exit 1
fi

stat() {
    if [ $1 -eq 0 ]; then
        echo -e "\e[32m success \e[0m"
    else 
        echo -e "\e[31m failure \e[0m"
        exit 2
    fi
}

echo -e "\e[35m configuring ${COMPONENT}..........! \e[0m \n"

echo -e "Configuring ${COMPONENT} repo :"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo
stat $?

echo -n "Installing ${COMPONENT} :"
yum install -y mongodb-org &>> ${LOGFILE}
stat $?

# systemctl enable mongod
# systemctl start mongod
