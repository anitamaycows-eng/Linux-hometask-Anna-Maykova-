#!/bin/bash

file=$1
treshold=$2

awk -F '\t' -v treshold=$treshold '$2 >= treshold' $file | sort -k3
