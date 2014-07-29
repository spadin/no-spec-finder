#! /usr/bin/env sh

app_dir=$1
spec_dir=$2
extension=$3

for file in $(find $app_dir -name "*${extension}" -print | sed "s!$app_dir*!!" | sed "s!$extension!!"); do
  spec_file="${spec_dir}${file}_spec${extension}"
  if [ ! -f  $spec_file ]; then
    echo $spec_file
  fi
done
