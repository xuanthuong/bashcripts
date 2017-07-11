#!/bin/bash
for f in *.zip
do
  dir="./${f%_*}"
  echo "--> Unzipping $f to folder ${dir}..."
  unzip $f -d $dir && rm $f
done