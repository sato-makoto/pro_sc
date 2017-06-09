/*
とりあえずは棒グラフの
 動画を描いてみた
 いかさまサイコロの
 シミュレーション
 5を除く1から6までの
 確率は8/51(15.7%)。
 5のみ11/51(21.6%)
 1000回繰り返し
 10回に1回画像として保存
 最後の1回も保存
 */

PrintWriter w;
PFont font;

void setup() {
  size(800, 600);
  background(0, 0, 0);
  stroke(50, 150, 80);
  strokeWeight(3);
  line(90, 80, 90, 550);
  line(60, 500, 750, 500);


  w = createWriter("frame/stills.txt");
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
  text("いんちきでないサイコロのシミュレーション", 180, 70);
}

// このブランチはいんちきを除いた

int diving() {
  int div = int(random(48));
  int first = 8;
  if (div < first) {
    return 0;
  } else if (div < first * 2) {
    return 1;
  } else if (div < first * 3) {
    return 2;
  } else if (div < first * 4) {
    return 3;
  } else if (div < first * 5) {
    return 4;
  } else {
    return 5;
  }
}

void draw() {
  int pic_num;
  int x_orig = 140;
  int x_shift =100;
  int y_orig = 500;
  int x_marging = 50;
  int all_dice;
  int[]  dice  = {0, 0, 0, 0, 0, 0};
  float multi = -1.2;
  fill(200, 80, 50);
  stroke(255, 255, 255);
  strokeWeight(1);
  for (pic_num = 0; pic_num < 1000; pic_num++) {
    dice[diving()] +=1;
    for (all_dice = 0; all_dice < 6; all_dice++) {
      rect(x_orig + x_shift * all_dice, y_orig, x_marging, dice[all_dice]* multi);
    }
    if (pic_num%10==0 || pic_num==999 ) {
      save("frame/dice" + nf(pic_num, 3) + ".jpg");
      w.println("dice" + nf(pic_num, 3) + ".jpg");
    }
    w.flush();
  }
  w.close();
  for (int x=0; x<6; x++) {
    println(dice[x]);
  }
  exit();
}