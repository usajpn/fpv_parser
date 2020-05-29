#!/bin/sh

EXPECTED_ARGS=2

if [ $# -eq $EXPECTED_ARGS ]; then
	mode=$1
	name=$2
	./create_video_list.sh $mode

	if [ $mode == 's' ]; then
		./merge_videos.sh $name
	fi

	./erase_audio.sh $mode $name
else
	echo "Usage: ./fpv_parser.sh [mode (s/a)] [name (new_name/prefix)]"
fi

