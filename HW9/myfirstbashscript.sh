#!/bin/bash

USER="Rumiia"

echo $(date)
echo "Hello, $USER"
pwd
ps -ef | grep bioset | grep -v grep | wc -l
ls -l /etc/passwd | awk '{print $1}'
