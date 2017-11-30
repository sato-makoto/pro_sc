// タイトル行など表示
void displaytitle() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  text("ランダムに贈り合うシミュレーション ii", 200, 70);
  textSize(15);
  text("初期値", 30, 355);
  textSize(25);
  text("※", 715,540);
}
// 回数表示、黒い四角で塗りつぶして削除し、その後に描画
void displaytimes(int i){
  i+=1;
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  String cycle = "贈与サイクル " + i + " 回目";
  black();
  rect(190,75,320,70);
  white();
  text(cycle, 200,100);
}
//統計値表示。黒い四角で塗りつぶして削除し、その後に描画
void display_amounts(IntDict plist) {
  int[] mmd = max_min_deg(plist);
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(20);
  String amount = "最小: " + mmd[1] + "  最大: "+ mmd[0] + "  格差※: " + mmd[2];
  white();
  text(amount, 200,130);
}

// A-Jを値の順序通りに表示
void display_players(String[] str) {
  black();
  rect(100,510,600,40);
  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  int xshift = 0;
  white();
  for (int x = first; x <members; x++) {
    text(str[x], 120+xshift, 540);
    xshift += 60;
  }
}

// $DIR/frame/present0000.jpg, etc
// add filename to stills.txt
void save_picture(int i, int last){
  save("frame/present" + nf(i, 4) + ".jpg");
  w.println("present" + nf(i, 4) + ".jpg");
  w.flush();
}

/*
与える相手が自分でないように
再帰でうまくゆかず
*/
String present_a2(String from) {
  String another = dice[int(random(members))];
  while (another == from) {
    another = dice[int(random(members))];
  }
  return another;
}

// ランダムな相手に 1 ずつ贈り物
// この関数で、全員が1回ずつ行う
// 昇順でソート
void present_and_sort(IntDict plist){
  for (String x : dice) {
    plist.add(x, -1);
    String another = present_a2(x);
    plist.add(another, 1);
  }
  plist.sortValues();
}

void intdic_display(IntDict plist) {
//  plist.sortValues();
  String[] mem = plist.keyArray();
  display_players(mem);
}

void displaygraph(IntDict plist) {
  int [] mem = plist.valueArray();
  for(int x = first; x < members; x++)  {
    black();
    if (x == 0) {
      rect(x_orig-1, y_orig, x_shift+2, multi*mem[x]-10);
    } else {
      rect(x_orig+x_margin*x, y_orig, x_shift, multi*mem[x]-10);
    }
    stroke(50,150,80);
    fill(50,150,80);
    rect(x_orig+x_margin*x, y_orig, x_shift, multi*mem[x]);
    redline();
    }
}

// 右端に格差表示
void disparity(IntDict plist) {
  stroke(200,0,100);
  fill(200,0,100);
  int [] mmd = max_min_deg(plist);
  rect(710, y_orig, x_shift, mmd[2]*multi);
}
