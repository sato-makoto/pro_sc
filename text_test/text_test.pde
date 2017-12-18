/*
Processingをはじめよう オライリー P86
 一部改
 日本語フォントは、環境によっては
 フォント作成メニューの文字指定が必要
 
 ここではIPA P 明朝を使用
 */

PFont font;
void setup() {
  size(670, 120);
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
}

void draw() {
  int y;
  float red = 0;
  rotate(PI/20);
  for (y =-110; y < 120; y++) {
        stroke(red, 100, 200);
    line(-100, y, 700, y);
    red+=1.1;
  }
  rotate(-PI/20);
  textSize(36);
  text("ひとりの人間にとっては小さな一歩だが、", 25, 60);
  textSize(18);
  text("That's one small step for man...", 27, 90);
  save("small_step.png");
  noLoop();
}