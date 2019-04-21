#!/bin/bash
#This script is created for aws s3 command line act
echo "please chose the options below:-
create bucket=1
remove bucket=2"
read option

case $option in 
1)
echo "enter bucket name you want to create"
read bucketname
aws s3 mb s3://$bucketname
;;
2)
echo "Choose bucket name you want to delete from the below list"
aws s3 ls
read bucketname_delete
aws s3 rb s3://$bucketname_delete
;;
*)
echo "you have entered an invalid option"
;;
esac

