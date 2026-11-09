#!/bin/bash

mkdir backup

for i in 1 2 3 4 5 6 7
do
  mkdir backup/"day_$i"
done

home=$(pwd)

for f in backup/day_*
do
  cd $f
  touch info.txt
  day=$(basename $f | sed 's/day_//g')
  echo "Резервная копия за день $day" > info.txt
  cd $home
done

mkdir all_backups

for f in backup/day_*
do
  i=$(basename $f | sed 's/day_//g')
  mv $f/info.txt $home/all_backups/info_day$i.txt
done

ls all_backups
