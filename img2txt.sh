 input_dir=$1
 ouput_dir=$2
 count=0
 for f in $input_dir/*.png
 do
  fName="${f##*/}"
  out_file="$ouput_dir${fName%.*}"
  # echo $out_file
  count=$(($count+1))
  echo "$count Tesseract ocr $f..."
  tesseract $f $out_file 
 done