#!/bin/bash

for i in {1..10}; do
    echo "$(date +"%H:%M:%S") $(ps -ef | wc -l)" >> linux_hw15.txt
    sleep 5
done

cat /proc/cpuinfo >> linux_hw15.txt

grep "^NAME=" /etc/os-release >> linux_hw15.txt

grep "^NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"' >> linux_hw15.txt

mkdir -p /opt/131224-wdm/Rumiia/hw15

	for file_num in {50..100}; do
    		touch "hw15/$file_num.txt"
	done

	echo "added files 50-100.txt in folder hw15 "
