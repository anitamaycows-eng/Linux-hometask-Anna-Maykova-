#!/bin/bash

sed -e 's/;/,/g' -e '1d; s/\([^"]\)$/\1"/' data.csv > data_f.csv

awk -F ',' 'NF != 3 {print $0}' data_f.csv

lines=$(wc -l < data_f.csv)

tail -n $(($lines - 1)) data_f.csv > data_fh.csv

while read line; do
    echo "$line" | awk -F ',' '{
       print "Hello, my name is " $1 ". I am " $2 " years old and I live in " $3
    }'
done < data_fh.csv
