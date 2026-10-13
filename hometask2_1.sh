#!/bin/bash

# Create a symlink to the given file in the current working directory.

file=$1
if [ -e "$file" ]; then
  echo "File exists"
  ln -s "$(realpath "$file")" "$(basename "$file")"
else
  echo "File doesn't exist"
fi
