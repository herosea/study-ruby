#!/bin/bash
#Program:
#   Program show the scriptname, parameters... 
#History:
#    2011/11/30 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo "The script name is     ========>  $0"
echo "There mount of arguments is ====> $#"
[ $# -lt 2 ] && echo "Too less arguments"
echo "Whole the arguments are ===========>  $@"
echo "The 1st argument is ===========> $1"
echo "The 2nd argument is ===========> $2"
