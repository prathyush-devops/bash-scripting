#!/bin/bash

# Validate the user who is running the script is a root user or not.

USER_ID=$(id -u)
# COMPONENT=frontend
# LOGFILE="/tmp/${COMPONENT}.log"


if [ $USER_ID -ne 0 ] ; then    
    echo -e "\e[31m Script is expected to executed by the root user or with a sudo privilege \e[0m \n \t Example: \n\t\t sudo bash wrapper.sh frontend"
    exit 1
fi 

echo -e "\e[35m Configuring frontend ......! \e[0m \n"

echo -n "Installing frontend :"
yum install nginx -y &>> /tmp/frontend.log 

if [ $? -eq 0 ]; then 
        echo -e "\e[32m success \e[0m"
    else 
        echo -e "\e[31m failure \e[0m"
       # exit 2
    fi

echo -n "Starting Nginx:"
systemctl enable nginx &>> /tmp/frontend.log 
systemctl start nginx &>> /tmp/frontend.log 

if [ $? -eq 0 ]; then 
        echo -e "\e[32m success \e[0m"
    else 
        echo -e "\e[31m failure \e[0m"
       # exit 2
fi

echo -n "Downloading the frontend component:"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

if [ $? -eq 0 ]; then 
        echo -e "\e[32m success \e[0m"
    else 
        echo -e "\e[31m failure \e[0m"
       # exit 2
fi

# yum install nginx -y
# systemctl enable nginx
# systemctl start nginx

# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf