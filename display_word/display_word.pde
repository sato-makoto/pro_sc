PrintWriter w;
PFont font;

void setup() {
  size(800, 600);
  background(0);
  font = loadFont("/home/makoto/work/pro_sc/dice_/data/IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  fill(255,255,255);
  text("いんちきが増してゆくシミュレーション", 200, 70);
  text("= 15.7%(8/51)",450,120 );
  text("= 21.6%(11/51)",230,170 );
  text("回数:", 200, 220);
  text(1000, 280, 220);
  font = loadFont("/home/makoto/work/pro_sc/dice_/data/FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  text("⚀, ⚁, ⚂, ⚃, ⚅", 200,120);
  text("⚄", 200, 170);
  

}