/*
とりあえずは棒グラフの
 動画を描いてみた
 いかさまサイコロの
 シミュレーション
 5を除く1から6までの
 確率は8/51(15.7%)。
 5のみ11/51(21.6%)
 */

PrintWriter w;

void setup() {
  size(800, 600);
  background(0, 0, 0);
  stroke(50, 150, 80);
  line(80, 80, 80, 550);
  line(50, 500, 750, 500);
  w = createWriter("frame/stills.txt");
}

int diving() {
  int div = int(random(51));
  int first = 8;
  if (div < first) {
    return 0;
  } else if (div < first * 2) {
    return 1;
  } else if (div < first * 3) {
    return 2;
  } else if (div < first * 4) {
    return 3;
  } else if (div < first * 5 + 3 ) {
    return 4;
  } else {
    return 5;
  }
}

void draw() {
  int pic_num;
  int x_orig = 120;
  int x_shift =100;
  int y_orig = 500;
  int x_marging = 50;
  int all_dice;
  int[]  dice  = {0, 0, 0, 0, 0, 0};
  float multi = -15.0;
  stroke(200, 80, 50);
  strokeWeight(2);
  for (pic_num = 0; pic_num < 100; pic_num++) {
    dice[diving()] +=1;
    for (all_dice = 0; all_dice < 6; all_dice++) {
      rect(x_orig + x_shift * all_dice, y_orig, x_marging, dice[all_dice]* multi);
      save("frame/dice" + nf(pic_num, 3) + ".jpg");
    }
    w.println("dice" + nf(pic_num, 3) + ".jpg");
    w.flush();
  }
   w.close();
   exit();
}