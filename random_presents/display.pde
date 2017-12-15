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

// 贈与サイクルの繰り返し回数表示
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
  String amount = "最大: " + max + "  最小: "+ min + "  格差※: " + deg;
  stroke(255,255,255);
  fill(255,255,255);
  text(amount, 200,130);
}

void display_deg() {
  int deg = max(people) - min(people);
  stroke(200,100,100);
  fill(200,50,100);
  rect(710,y_orig-3,x_shift,multi*(deg-3));
}

// 順位切り出し
int member_index(String s){
  IntDict plist;
  plist = new IntDict();
  int x = 0;
  for(String y : dice2) {
    plist.set(y, people[x]);
    x+=1;
  }
  plist.sortValuesReverse();
  String [] members = plist.keyArray();
  int z = 1;
  for(String q : members) {
    if(q == s) {
      break;
    }
    z+=1;
  }
  return z;
}
// AからJと※(格差値)表示
void display_players() {
  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  int xshift = 0;
  for (int x = 0; x <11; x++) {
    text(dice[x], 120+xshift, 540);
    xshift += 60;
  }
}

// frameディレクトリの下に present0000.jpg など
void save_picture(int i, int last){
  save("frame/present" + nf(i, 4) + ".jpg");
  w.println("present" + nf(i, 4) + ".jpg");
  w.flush();
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
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(16);
// 描画削除
  stroke(0,0,0);
  fill(0,0,0);
  rect(95,198,650,300);
  for(int x=0; x<10; x++)
  {
    /* 棒グラフ描画 */
      stroke(50,150,80);
      fill(50,150,80);
      people[x]-=1;
      people[present_another(people[x])]+=1;
      rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
      fill(200,200,200);
      // 順位表示
      text(member_index(dice[x]),x_orig+x_margin*x+10, multi*people[x]+490);
      display_deg();
      redline();
      // print(dice[x]+":"+member_index(dice[x]), " ");
    }
    println();

}
