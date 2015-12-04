#!/usr/bin/env bash

if [[ -z $1 ]]; then
	echo "Needs an argument for file name."
	exit
fi

INRES="1920x1080"
#INRES="1600x900"
OUTRES="1920x1080"
#OUTRES="960x540"
FPS="60"

ffmpeg \
-f x11grab -s $INRES -i :0.0 \
-r 60 \
-c:v libvpx -crf 12 -s $OUTRES -b:v 1200k \
-preset ultrafast \
-b 1000k -threads 4 \
-f webm $1

# ffmpeg -f x11grab -r 24 -s 1920x1080 -i :0.0 -an -c:v libx264 -crf 0 -preset ultrafast output.mpg
# ffmpeg -i output.mpg -acodec libvorbis -ac 2 -ab 96k -ar 44100 -b 345k -s 640x360 output.webm

