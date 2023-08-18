#!/bin/bash

# Validate the user who is running the script is a root user or not.

USER_ID=$(id -u)
COMPONENT=catalogue
LOGFILE="/tmp/${COMPONENT}.log"
APPUSER="roboshop"


if [ $USER_ID -ne 0 ] ; then    
    echo -e "\e[31m Script is expected to executed by the root user or with a sudo privilege \e[0m \n \t Example: \n\t\t sudo bash wrapper.sh frontend"
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

echo -e "\e[35m Configuring ${COMPONENT} ......! \e[0m \n"

echo -n "Configuring ${COMPONENT} repo:"
curl --silent --location https://rpm.nodesource.com/setup_16.x | bash - &>> ${LOGFILE}
stat $?

echo -n "Installing Nodejs :"
yum install nodejs -y    &>> ${LOGFILE}
stat $?

echo -n "Creating application user account :"
useradd roboshop
stat $?


# echo -n "Enabling the ${COMPONENT} visibility :"
# sed -ie 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf
# stat $?

# echo -n "Starting the ${COMPONENT} :"
# systenctl enable mongod       &>> ${LOGFILE}
# systemctl start mongod        &>> ${LOGFILE}
# stat $?

# echo -n "Downloading the ${COMPONENT} schema :"
# curl -s -L -o /tmp/${COMPONENT}.zip "https://github.com/stans-robot-project/${COMPONENT}/archive/main.zip"
# stat $?

# echo -n "Extracting the ${COMPONENT} schema :"
# cd /tmp
# unzip -o ${COMPONENT}.zip       &>> ${LOGFILE}
# stat $?

# echo -n "Injecting ${COMPONENT} schema :"
# cd ${COMPONENT}-main
# mongo < catalogue.js         &>> ${LOGFILE}
# mongo < users.js             &>> ${LOGFILE}
# stat $?

# echo -e "\e[35m ${COMPONENT} Installation is completed \e[0m \n"