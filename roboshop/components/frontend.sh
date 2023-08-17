#!/bin/bash

# Validate the user who is running the script is a root user or not.

USER_ID=$(id -u)
# COMPONENT=frontend
# LOGFILE="/tmp/${COMPONENT}.log"


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

echo -e "\e[35m Configuring frontend ......! \e[0m \n"

echo -n "Installing frontend :"
yum install nginx -y &>> /tmp/frontend.log 

stat $?

echo -n "Starting Nginx:"
systemctl enable nginx &>> /tmp/frontend.log 
systemctl start nginx &>> /tmp/frontend.log 

stat $?

echo -n "Downloading the frontend component:"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

stat $?

echo -n "Clean up of frontend :"
cd /usr/share/nginx/html
rm -rf *     &>> /tmp/frontend.log
stat $?

echo -n "Extracting frontend :"
unzip /tmp/frontend.zip   &>> /tmp/frontend.log
stat $?

echo -n "sorting the frontend files :"
mv frontend-main/* .
mv static/* .
rm -rf static README.md     &>> /tmp/frontend.log
mv localhost.conf /etc/nginx/default.d/roboshop.conf
stat $?

echo -n "Restarting Frontend :"
systemctl daemon-reload      &>> /tmp/frontend.log
systemctl restart nginx      &>> /tmp/frontend.log
stat $?