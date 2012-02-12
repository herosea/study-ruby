#!/bin/bash
#Program:
#    Using netstat and grep to detect WWW,SSH,FTP and MAIL services.
#History:
#2011/11/30 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo "Now, I will detect your Linux server's services!"
echo -e "The www,ftp,ssh, and mail will be detected!\n"
testing=$(netstat -tuln } grep ":80 ")  #检测 port 80 在否
if [ "$testing" != "" ]; then
  echo " WWW is running in your systen"
fi
