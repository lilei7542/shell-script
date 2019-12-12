#/bin/bash
for ((i=1;i<=250;i++))
do
ping 192.168.10.$i -t 1 >>abc.txt
done
