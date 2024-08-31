#!/bin/bash 
#
########################################################################################################################
#AUTHOR : FAREED SAYED 
#DATE   : 31 AUGUST 2024 
#
#THIS SCRIPT WILL REPORT THE AWS RESOURCE USAGE 
#
#VERSION : v1
#######################################################################################################################



#AWS S3 
#AWS EC2 
#AWS LAMBDA 
#AWS IAM USER 
#
set -x 
set -e 


echo 'LIST THE AWS S3 BUCKETS' 
aws s3 ls 


echo 'AWS EC2 LIST INSTANCES'
#aws ec2 describe-instances .....................this command providing the json of entire but we just want instance id
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


echo 'LIST LAMBDA '
aws lambda list-functions

echo 'LIST IAM USER'
aws iam list-users
