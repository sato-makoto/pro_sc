void display_titles_etc() {
  font = loadFont("IPAPMincho-48.vlw");
  white();
  textSize(20);
  int x = 0;
  int y = 0;
  for(int i = 0; i < 10; i++) {
    y = 50*i + 40;
    text(dice[i], center+10, y);
  }
}

void member_circle(int x, int y) {
  stroke(120,0,0);
  fill(120,0,0);
  ellipse(x,y,circle_r,circle_r);
}

void all_circle(IntDict plist) {
  black();
  rect(40,40,700,500);
  lines();
  display_titles_etc();
  plist.sortValues();
//  String[] score = plist.keyArray();
  int y = first_y;
  int x = 0;
  for (int i = 0; i < 10; i++) {
    x = indexing(atoz,dice[i]);
    member_circle(x*shift_x+first_x, y);
    y += first_y;
  }
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
// 贈与サイクル
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
