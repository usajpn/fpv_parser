#!/bin/sh

current_dir=`pwd`
output_file="video_list.txt"
search_dir="${current_dir}/input_video"
mode=$1

# remove current file
rm $output_file


if [ $mode == 's' ]; then
	for entry in "$search_dir"/*
		do
			echo "file '$entry'" >> $output_file
		done
else
	for entry in "$search_dir"/*
		do
			echo $entry >> $output_file
		done
fi
