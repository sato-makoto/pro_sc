/*
make 100 pices pictures(*.jpg)
use below scripts

#!/bin/sh
NAME=enlarge_`date "+%Y-%m-%d"`
if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=8/6:vbitrate=8000000 -vf scale=800:600 -o ${NAME}.avi -mf type=jpeg:fps=20 mf://@stills.txt
ffmpeg -i ${NAME}.avi ${NAME}.mp4
*/

PrintWriter w;

void setup() {
  size(800,600);
  background(0,0,0);
  stroke(200,50,80);
  w = createWriter("stills.txt");
}

void mycircle(int i, int r) {
  background(0,0,0);
  fill(0,0,0);
  ellipse(400,300, r, r);
  String filename = "circle" + nf(i,2) + ".jpg";
  save(filename);
  w.println(filename);
  w.flush();

}

void draw() {
  for(int i=0; i<100; i++) {
    mycircle(i, i*4+150);
  }
  w.close();
  exit();
}