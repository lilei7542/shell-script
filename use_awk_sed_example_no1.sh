#!/bin/bash
#date 2019.7.29
#Author lilei
#功能：删除文件的前几列，并删除空格


history 1 | awk '{print $NF}'	 #打印最近的最后一列

awk '{$1=null;$2=null;$3=null;$4=null;$5=null;print $0}' /root/temp.txt |sed 's/     //' >>/root/test123

/usr/bin/tail -n 1 /var/log/shenji.log |awk '{$1=null;$2=null;$3=null;$4=null;$5=null;print $0}' |sed 's/     //' >>/root/log.txt
