/*
モノクロのグラデーション画像量産
sin()に意味があったか疑問...
enc.sh で動画作成
*/


PrintWriter w;
int size_x = 800;
int size_y = 600;

void setup() {
  size(800, 600);
  w = createWriter("frame/stills.txt");
}

// 徐々に明るくなってゆく部分
int increse(float grad, float rate, int y) {
  while (grad < 1) {
    stroke(int(sin(grad)*256));
    line(1, y, size_x, y);
    y++;
    grad+=rate;
  }
  return y;
}

// 徐々に暗くなってゆく部分
int decrese(float grad, float rate, int y) {
  while (grad >= 0) {
    stroke(int(sin(grad)*256));
    line(1, y, size_x, y);
    y++;
    grad-=rate;
  }
  return y;
}

// 明暗を画面いっぱいまで描く
void mydraw(float rate) {
  int grad;
  int y = 1;
  while (y <= size_y) {
    grad = 0;
    y = increse(grad, rate, y);
    grad = 1;
    y = decrese(grad, rate, y);
  }
}

void draw() {
  int pic_num = 1;
  for (float rate = 0.0001; rate <= 0.15; rate+=0.003) {
    mydraw(rate);
    save("frame/grad" + nf(pic_num, 3) + ".jpg");
    w.println("grad" + nf(pic_num, 3) + ".jpg");
    w.flush();
    pic_num++;
  }
  w.close();
  println("OK");
  exit();
}