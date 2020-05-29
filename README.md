# FPV Parser

A video parser which merges multiple vidoes then erases the audio of the merged video.
There is a mode to enable/disable merging. You can also add arbitrary prefix to the file name.

## Requirements
- ffmpeg

## Step 1
Put the video files in the `input_video` folder.
The videos inside the folder will be merged and the audio will be erased.

## Step 2
Execute `fpv_parser.sh`
This creates a new `video_list.txt` which is the list of all files in the `input_video` folder.
After creating the file, the merging and the erasing of audio will be executed.

### Example1: Create merged w/o audio file
`./fpv_parser.sh s CMU_test`
This will create merged single file in the output folder: `CMU_test_wo_audio.mp4`

### Example2: Create all(not merged) w/o audio file
`./fpv_parser.sh a CMU_test`
This will create files in the output folder: `CMU_test_GH040062.mp4`, `CMU_test_GH040063.mp4`

