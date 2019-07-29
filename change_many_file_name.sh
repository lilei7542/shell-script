#!/bin/bash
#date 2019.4.18

for file in `ls |grep .php`
do 
# newfile=`echo $file | sed 's/wxch_user/user/'`
 newfile=`echo $file | sed 's/ecs_user/user/'`
 mv $file $newfile
done
