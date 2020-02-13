#!/bin/sh

current_dir=`pwd`
output_file="video_list.txt"
search_dir="${current_dir}/input_video"

# remove current file
rm $output_file

for entry in "$search_dir"/*
do
  echo "file '$entry'" >> $output_file
done
