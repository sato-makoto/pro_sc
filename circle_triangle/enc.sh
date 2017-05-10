#!/bin/sh
NAME=circle_triangle_`date "+%Y-%m-%d"`
if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
mencoder  \
  -nosound  \
  -ovc lavc  \
  -lavcopts vcodec=mpeg4:aspect=8/6:vbitrate=8000000  \
  -vf scale=800:600  \
  -o ${NAME}.avi  \
  -mf type=jpeg:fps=15 mf://@stills.txt

