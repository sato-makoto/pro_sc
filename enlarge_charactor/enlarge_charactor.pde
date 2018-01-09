// "2018"が拡大する
// フォントサイズごとに画像一枚を保存

PrintWriter w;
PFont font;
int s = 1;
int xpos = 100;
int ypos = 170;
String text = "2018";

void setup() {
  size(400,300);
  background(0);
// frameRate(5);
  w = createWriter("frame/stills.txt");
}

void draw() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  if (s < 80) {
    stroke(0);
    fill(0);
    rect(0,0,400,300);
    stroke(255);
    fill(255);
    textSize(s);
    text(text, xpos,ypos);
    save("frame/char" + nf(s, 2) + ".jpg");
    w.println("char" + nf(s, 2) + ".jpg");
    w.flush();
    println(s);
    s+=1;
  } else {
    w.close();
    exit();
  }
}