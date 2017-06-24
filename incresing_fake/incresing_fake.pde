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
  textSize(40);
  text("⚄", 200, 150);
  text("⚀,⚁,⚂,⚃,⚅", 200, 180);
}

void displayxline () {
  stroke(50, 150, 80);
  strokeWeight(3);
  line(90, 80, 90, 550);
  line(60, 500, 750, 500); 

  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  text("150", 40, 320);
  text("300", 40, 140);
}

void displaytitle() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  text("いんちきが増してゆくシミュレーション", 200, 70);
}

float divnum(float ratio) {
  float divnum = (1000 - (1000 * ratio))/5;
  return divnum;
}

void mydisplay(float ratio, int picnum) {
  font = loadFont("IPAPMincho-48.vlw");
  textSize(20);
  float percent = float(round(ratio * 1000))/10;
  text("= "+ percent + "%", 235, 147);
  float rest_percent = float(round((1 - ratio)/5 * 1000))/10;
  text("= " + rest_percent + "%", 430, 177);

  int [] dice = {0, 0, 0, 0, 0, 0};
  float div = divnum(ratio);
  for (int x = 0; x < 1000; x++) {
    int num = int(random(1000));
    int fakenum = int(1000*ratio);
    if (num < int(1000*ratio)) {
      dice[4]+=1;
    } else if (num < fakenum + int(div)) {
      dice[0] += 1;
    } else if (num < fakenum + int(div * 2)) {
      dice[1] += 1;
    } else if (num < fakenum + int(div * 3)) {
      dice[2] += 1;
    } else if (num < fakenum + int(div * 4)) {
      dice[3] += 1;
    } else {
      dice[5] += 1;
    }
  }

  //  for (int x = 0; x <6; x++) {
  //    println(dice[x]);
  //  }
  int x_orig = 140;
  int x_shift =100;
  int y_orig = 500;
  int x_marging = 50;
  float multi = -1.2;
  fill(200, 80, 50);
  stroke(255, 255, 255);
  strokeWeight(1);

  for (int all_dice = 0; all_dice < 6; all_dice++) {
    rect(x_orig + x_shift * all_dice, y_orig, x_marging, dice[all_dice]* multi);
  }
  save("frame/inc_fake" + nf(picnum, 3) + ".jpg");
  w.println("inc_fake" + nf(picnum, 3) + ".jpg");
}

void draw() {

  int time = 1;
  for (float ratio = 0.1667; ratio < 0.24; ratio+=0.002) {
    displaydice();
    displayxline();
    displaytitle();
    mydisplay(ratio, time);
    time+=1;
    background(0);
    fill(255);
  }
  w.close();
  exit();
}