PFont font;
PrintWriter w;

void setup() { 
  size(600, 120);
  background(0);
  timedraw();
  w = createWriter("frame/stills.txt");
}

String timedraw() {

  int y = year();
  int m = month();
  int d = day();
  String all ="今日は" + y + "年" + m + "月" + d + "日です。"; 
  return all;
}

void draw() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(40);

  for (int foo = 620; foo >= -650; foo--) {
    text(timedraw(), foo, 70);
    save("frame/string" + nf(foo, 4) + ".jpg");
    background(0);
    w.println("string" + nf(foo, 4) + ".jpg");
    w.flush();
  }
  w.close();
  exit();
}