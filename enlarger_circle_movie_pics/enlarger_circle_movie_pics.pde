/*
make 100 pices pictures(*.jpg)
use below files and scripts

$ ls *.jpg | sort -n >stills.txt
(this files 1,10,11,12,...2,20,21..)
(cannot  files 1,2, ... 11,12,..20)

#!/bin/sh
NAME=enlarge_`date "+%Y-%m-%d"`
if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=8/6:vbitrate=8000000 -vf scale=800:600 -o ${NAME}.avi -mf type=jpeg:fps=20 mf://@stills.txt
ffmpeg -i ${NAME}.avi ${NAME}.mp4
*/

void setup() {
  size(800,600);
  background(0,0,0);
  stroke(200,50,80);
}

void mycircle(int i, int r) {
  background(0,0,0);
  fill(0,0,0);
  ellipse(400,300, r, r);
  String filename = "circle" + str(i) + ".jpg";
  save(filename);
}

void draw() {
  for(int i=0; i<100; i++) {
    mycircle(i, i*4+150);
  }
}
