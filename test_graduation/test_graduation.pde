int size_x = 640;
int size_y = 480;

void setup() {
  size(640, 480);
}

int [] colorlist(int colornum) {
  int [] clist = {0, 0, 0};
  if (colornum < 256) {
    clist[2] = colornum;
  } else if (colornum < 65536) {
    clist[1] = colornum / 256;
    clist[2] = colornum % 256;
  } else {
    clist[0] = colornum / 65536;
    clist[1] = (colornum % 65536) / 256;
    clist[2] = colornum % 256 % 256;
  }
  return clist;
}

void draw() {
  int cnum = 0;
  int [] clist = {0, 0, 0};
  for (int y = 1; y <= size_y; y++) {
    for (int x = 1; x <= size_x; x++) {
      if (cnum > 16777215) {
        cnum = 0;
      }
      clist = colorlist(cnum);
      stroke(clist[0], clist[1], clist[2]);
      //      println(clist[0], clist[1], clist[2]);
      point(x, y);
      cnum++;
    }
    // println(clist);
  }
  println("OK");
  noLoop();
}