#!/bin/bash

#this program receives access.log file
awk -F ' ' '{print $1 " " $9}' access.log > status_codes.txt
sed 's/4[0-9][0-9]/CLIENT_ERROR/g' access.log > errors.log

for var in $(awk -F ' ' '{print $1}' status_codes.txt | sort | uniq)
do
  grep $var status_codes.txt | wc -l
done
