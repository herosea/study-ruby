#!/bin/bash
#Program:
#   Program show the scriptname, parameters... 
#History:
#    2011/11/30 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo "There mount of arguments is ====> $#"
echo "Your full parameter is =========> $@"
shift
echo "There mount of arguments is ====> $#"
echo "Your full parameter is =========> $@"
shift 3
echo "There mount of arguments is ====> $#"
echo "Your full parameter is =========> $@"
