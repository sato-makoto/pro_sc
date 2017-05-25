/*
Processingをはじめよう オライリー P86
一部改
日本語フォントは、環境によっては
フォント作成メニューの文字指定が必要
*/

PFont font;
void setup() {
  size(670,120);
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
}

void draw(){
  background(102);
  textSize(36);
  text("ひとりの人間にとっては小さな一歩だが、", 25, 60);
  textSize(18);
  text("That's one small step for man...", 27, 90);
}