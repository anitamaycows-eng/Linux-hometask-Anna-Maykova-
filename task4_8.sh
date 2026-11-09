#!/bin/bash

mkdir logs
cd logs

for i in $(seq -w 1 10)
do
  for j in $(seq 10)
  do
    if [ $j -eq $i ]
    then
      echo "Log number $j" > "log_$i.txt"
    fi
  done
done

for f in log_*.txt
do
  cat $f
done

for f in log_*.txt
do
  a=$(echo "$f" | sed -e 's/log_//g' -e 's/\.txt//g')
  if (( 10#$a % 2 == 0 ))
  then
    rm $f
  fi
done
