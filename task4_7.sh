#!/bin/bash

mkdir -p my_project/{src,docs,tests,build}/{images,scripts,data}

for dir in $(find my_project -type d)
do
    echo "Directory created: $dir"
done

touch my_project/README.md
