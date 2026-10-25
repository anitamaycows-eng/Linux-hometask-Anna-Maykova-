#!/bin/bash

#this program cheks if file is fasta

path=$1

if [[ ! -e $path ]]
then
  echo "file doesn't exist"
elif [[ $path == *.fasta ]]
then
  echo "It's fasta file"
else
  echo "It is not fasta file"
fi
