#!/bin/sh

ffmpeg -f concat -safe 0 -i video_list.txt -c copy ./output_video/output_w_audio.mp4
