#! /usr/bin/env zsh

app_dir=$1
spec_dir=$2
extension=$3

for file in $(find $app_dir -name "*${extension}" -print); do
  spec_file="${${file/app/spec}/$extension/_spec$extension}"
  if [ ! -f  $spec_file ]; then
    echo $spec_file
  fi
done
