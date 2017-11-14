/*
とりあえずは棒グラフの
 動画を描いてみた
 サイコロの
 シミュレーション
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
  text("まっとうなサイコロのシミュレーション", 200, 70);
  text("= 16.7%(1/6)",500,120 );
  text("回数:", 200, 170);

  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  text("⚀, ⚁, ⚂, ⚃, ⚅, ⚄", 200, 120);
}

int diving() {
  return int(random(6));
  
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
  stroke(255, 255, 255);
  strokeWeight(1);
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);

  fill(200, 80, 50);
  stroke(255, 255, 255);
  strokeWeight(1);
  for (pic_num = 1; pic_num <= 1000; pic_num++) {
    stroke(0);
    fill(0,0,0);
    rect(280,140,100,40); 
    stroke(255);
    textSize(30);
    fill(255, 255, 255);
    text(pic_num, 280, 170);
    fill(200, 80, 50);
    dice[diving()] +=1;
    for (all_dice = 0; all_dice < 6; all_dice++) {
      rect(x_orig + x_shift * all_dice, y_orig, x_marging, dice[all_dice]* multi);
    }
    if (pic_num%10==1 || pic_num==1000 ) {
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