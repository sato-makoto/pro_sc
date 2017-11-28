void displayxline () {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
//  text("15%", 45, 320);
//  text("30%", 45, 140);
}

void displaytitle() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  text("ランダムに贈り合うシミュレーション", 200, 70);
  textSize(15);
  text("初期値", 30, 355);
}
void displaytimes(int i)
{
  i+=1;
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  String cycle = "贈与サイクル " + i + " 回目";
  stroke(0,0,0);
  fill(0,0,0);
  rect(190,75,320,70);
  fill(255,255,255);
  text(cycle, 200,100);
}

void display_amounts() {
  int max = max(people);
  int min = min(people);
  int deg = max - min;
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  String amount = "最大: " + max + "  最小: "+ min + "  格差: " + deg;
  stroke(255,255,255);
  fill(255,255,255);
  text(amount, 200,130);
}

void display_players() {
  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  int xshift = 0;
  String [] dice = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
  for (int x = 0; x <10; x++) {
    text(dice[x], 120+xshift, 540);
    xshift += 60;
  }
}

void save_picture(int i, int last){
/*  save("frame/present" + nf(i, 4) + ".jpg");
  w.println("present" + nf(i, 4) + ".jpg");
  w.flush();
  */
}

/*
与える相手が自分でないように
再帰でうまくゆかず
*/
int present_another(int p) {
  int another = int(random(10));
  while (p == another){
    another = int(random(10));
  }
  return another;
}

void present() {
  for(int x=0; x<10; x++)
  {
    /* 描画削除 */
    stroke(0,0,0);
    fill(0,0,0);
    /* A が100を下回ったとき枠線が消えないバグ対応 */
    if (x == 0) {
      rect(x_orig-1, y_orig, x_shift+2, multi*people[x]);
    } else {
      rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
    }

    /* 棒グラフ描画 */
    stroke(50,150,80);
    fill(50,150,80);
    people[x]-=1;
    people[present_another(people[x])]+=1;
    rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
    redline();

//    total();
    }
}

void disparity() {
  stroke(200,0,100);
  fill(200,0,100);
  int deg = max(people) - min(people);
  rect(710, y_orig, x_shift, multi*deg);
}
