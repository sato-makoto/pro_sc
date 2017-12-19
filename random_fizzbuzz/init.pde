void init() {
  background(0);
  fill(255);
  frameRate(7);
  w = createWriter("frame/stills.txt");
}

PrintWriter w;
PFont font;
int i = 1;
int x, y;
int last = 107;
