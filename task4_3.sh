#!/bin/bash

df -h > command
awk 'NR > 1 {print $1 " "  $5}' command > result
sed 's/dev/device/g' result | sed 's/%//g' > result2

IFS=$'\n'
for var in $(cat result2)
do
  echo "$var" | awk -F ' ' '$2 > 80 {print $1 " attention!"}'
done
