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
  rect(190,75,240,35);
  fill(255,255,255);
  text(cycle, 200,100);
}

void display_players() {
  font = loadFont("FreeMono-48.vlw");
  textFont(font);
  textSize(30);
  int xshift = 0;
  String [] dice = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
  for (int x = 0; x <10; x++) {
    text(dice[x], 120+xshift, 540);
    xshift += 65;
  }
}

void save_picture(int i, int last){
//  if (i%10==1 || i==last ) {
    save("frame/present" + nf(i, 3) + ".jpg");
    w.println("present" + nf(i, 3) + ".jpg");
//  }
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
  for(int x=0; x<10; x++)
  {
    stroke(0,0,0);
    fill(0,0,0);
    /* A が100を下回ったとき枠線が消えないバグ対応 */
    if (x == 0) {
      rect(x_orig-1, y_orig, x_shift+2, multi*people[x]);
    } else {
      rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
    }
    stroke(50,150,80);
    fill(50,150,80);
    people[x]-=1;
    people[present_another(people[x])]+=1;
    rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
    redline();

//    total();
    }
}
