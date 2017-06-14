#!/bin/sh
NAME=grad_scroll_`date "+%Y-%m-%d"`
if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
mencoder  \
  -nosound  \
  -ovc lavc  \
  -lavcopts vcodec=mpeg4:aspect=4/1:vbitrate=8000000  \
  -vf scale=1200:300  \
  -o ${NAME}.avi  \
  -mf type=jpeg:fps=40 mf://@stills.txt

ffmpeg -i ${NAME}.avi ${NAME}.mp4
rm ${NAME}.avi
