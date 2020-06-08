#!/bin/sh

mode=$1
name=$2

if [ $mode == 's' ]; then
	ffmpeg -i ./output_video/${name}_w_audio.mp4 -vcodec copy -an ./output_video/${name}_wo_audio.mp4
else
	input="video_list.txt"
	while IFS= read -r line
	do
		f=`basename "$line"`
		< /dev/null ffmpeg -i ./input_video/$f -vcodec copy -an ./output_video/${name}_${f}
	done < "$input"
fi

