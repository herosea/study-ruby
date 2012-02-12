#!/bin/bash
#Program:
#    User input a filename ,Program will check the folloing:
#   1.)exist? 2.) file/directory? 3.)file permission
#History:
#2011/11/26 grandsea First release
#2011/11/28 grandsea Second release modify
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "Please input a filename, I will check the file's type and permission" #用户输入文件名
read -p "Input a filename: " filename
test -z $filename && echo "You must input a filename" && exit 0
#判断文件是否存在
test ! -e ${filename} && echo "The file ${filename} does not exist" && exit  1
#判断文件是不是目录
test -f ${filename} && filetype="regular file" 
test -d ${filename} && filetype="directory" 
#检测执行人的权限
test -r ${filename} && perm="readable" 
test -w ${filename} && perm="${perm} writeable"
test -x ${filename} && perm="${perm} executeable"
#开始输出信息 
echo "You filename: ${filename} is ${filetype}"
echo "And the permissions are: ${perm}"
