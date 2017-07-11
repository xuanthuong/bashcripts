# !/bin/bash

 input_dir=$1
 ouput_dir=$2
 num_file=$3
 count=0
 for f in $input_dir/*.pdf
 do
  fName="${f##*/}"
  out_file="$ouput_dir${fName%.*}".png
  echo $out_file
  echo "$count Converting $f..."
  gs -sDEVICE=png16m -dTextAlphaBits=4 -r300 -q -o $out_file $f
  count=$(($count+1))
  if (( $count >= $num_file )); then
    break
  fi
 done