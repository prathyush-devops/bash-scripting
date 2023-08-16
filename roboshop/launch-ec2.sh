#!/bin/bash 


COMPONENT=$1
if [ -z $1 ] || [ -z $2 ]  ; then 
    echo -e "\e[31m COMPONENT NAME IS NEEDED \e[0m \n \t \t"
    echo -e "\e[35m Ex Usage \e[0m \n\t\t $ bash launch-ec2.sh shipping"
    exit 1
fi 

AMI_ID="ami-0c1d144c8fdd8d690"
INSTANCE_TYPE="t2.micro"
SG_ID="sg-02431ae2e8f1c8ca8"                               #b55 allow_all security group id

aws ec2 run-instances --image-id ${AMI_ID} --instance-type ${INSTANCE_TYPE} --security-group-ids ${SG_ID} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]"
