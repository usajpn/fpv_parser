#!/bin/sh

name=$1

ffmpeg -f concat -safe 0 -i video_list.txt -c copy ./output_video/${name}_w_audio.mp4
