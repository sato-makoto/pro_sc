PrintWriter w;
void setup() {
  size(1200, 200);
//  frameRate(2);
  w = createWriter("frame/stills.txt");
}

int inc(int x, int rate) {
  while (rate < 255) {
    stroke(rate);
    line(x, 0, x, 200);
    x++;
    rate+=10;
  }
  return x;
}

int dec(int x, int rate) {
  while (rate > 0 ) {
    stroke(rate);
    line(x, 0, x, 200);
    x++;
    rate-=10;
  }
  return x;
}

void mydraw(int shift_x) {
  int x = 1 + shift_x;
  int rate;
  while (x <= 1200) {
    rate = 0;
    x = inc(x, rate);
    rate = 255;
    x = dec(x, rate);
  }
}

int pic_num = 1;
int shift_x = 0;
void draw() {
  if(shift_x < 500) {
    mydraw(shift_x*-4);
//    save("frame/scroll" + nf(pic_num, 3) + ".jpg");
//     w.println("scroll" + nf(pic_num, 3) + ".jpg");
    w.flush();
  } else {
    w.close();
    noLoop();
    println("OK");
  }
    pic_num++;
    shift_x +=1;
/*
  for (int shift_x = 0; shift_x<64; shift_x++) {
    mydraw(shift_x*-4);
    save("frame/scroll" + nf(pic_num, 3) + ".jpg");
    w.println("scroll" + nf(pic_num, 3) + ".jpg");
    w.flush();
    pic_num++;
  }
*/

}
