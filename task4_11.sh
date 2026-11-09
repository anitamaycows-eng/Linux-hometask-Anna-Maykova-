#!/bin/bash

touch image1.jpg image2.png doc1.txt doc2.pdf
touch script.sh archive.tar.gz

mkdir images documents scripts archives

for f in *.*
do
  b=$(basename $f)
  ext=${b#*.}

  if [[ $ext == "jpg" || $ext == "png" ]]
  then
    mv $f images
  elif [[ $ext == "txt" || $ext == "pdf" ]]
  then
    mv $f documents
  elif [[ $ext == "tar.gz" ]]
  then
    mv $f archives
  else
    mv $f scripts
  fi
done

ls -R .
