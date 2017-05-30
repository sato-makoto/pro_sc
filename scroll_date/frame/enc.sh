#!/bin/sh
NAME=string_test-`date "+%Y-%m-%d"`
if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
mencoder  \
  -nosound  \
  -ovc lavc  \
  -lavcopts vcodec=mpeg4:aspect=5/1:vbitrate=8000000  \
  -vf scale=600:120  \
  -o ${NAME}.avi  \
  -mf type=jpeg:fps=200 mf://@stills.txt

#ffmpeg -i ${NAME}.avi ${NAME}.mp4
#rm ${NAME}.avi
