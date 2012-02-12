#!/bin/bash
#Program:
#    User inputs his first name and last name. Program shows his full name.
#History:
#2011/11/26 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname # 提示用户输入
read -p "Please input your last name: " lastname # 提示用户输入
echo -e "\n Your full name is $firstname $lastname" #结果由屏幕输出
