PrintWriter w;
PFont font;
/*
つくりかけ
1000回さいころを振る毎に
さいころのインチキ度を上げてゆく予定
*/

void setup() {
  size(800, 600);
  background(0);
  w = createWriter("frame/stills.txt");

  stroke(50, 150, 80);
  strokeWeight(3);
  line(90, 80, 90, 550);
  line(60, 500, 750, 500);


  displaydice();
  displayxline();
  displaytitle();
}


void displaydice() {
  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(80);
  int xshift = 0;
  String [] dice = {"⚀", "⚁", "⚂", "⚃", "⚄", "⚅"};
  for (int x = 0; x <6; x++) {
    text(dice[x], 140+xshift, 560);
    xshift += 100;
  }
}

void displayxline () {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  text("15%", 45, 320);
  text("30%", 45, 140);
}

void displaytitle() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  text("いんちきが増してゆくシミュレーション", 200, 70);
}



void mydisplay(float ratio) {
  float fifth = ratio;
  float rests = (1-ratio)/5;


}
