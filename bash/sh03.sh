#!/bin/bash
#Program:
#    Program creates three files, which named by users's input
#    and date command.
#Hitory:
#2011/11/26 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 让用户输入用户名，并且取得filename这个变量
echo -e "I will usr "touch" command to create 3 files" #纯粹显示信息
read -p "Please input your filename: " fileuser #提示用户输入

# 2. 为了避免用户随意按[Enter],利用变量功能分析文件名是否有设置
filename=${fileuser:-"filename"}       #开始判断是否配置文件名
date1=$(date --date='2 days ago' +%Y%m%d) #前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d) #前一天的日期
date3=$(date +%Y%m%d)                     #今天的日期
file1=${filename}${date1}                 #下面三杭在配置文件名
file2=${filename}${date2}
file3=${filename}${date3}

# 4. 创建文件名
touch "$file1"
touch "$file2"
touch "$file3"
