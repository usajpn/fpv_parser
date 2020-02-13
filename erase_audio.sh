#!/bin/sh

ffmpeg -i ./output_video/output_w_audio.mp4 -vcodec copy -an ./output_video/output_wo_audio.mp4

