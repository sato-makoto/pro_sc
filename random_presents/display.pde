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
  if (i%10==1 || i==last ) {
    save("frame/present" + nf(i, 3) + ".jpg");
    w.println("present" + nf(i, 3) + ".jpg");
  }
    w.flush();
}

void present() {
  for(int x=0; x<10; x++)
  {
    redline();
    stroke(0,0,0);
    fill(0,0,0);
    rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
    stroke(50,150,80);
    fill(50,150,80);
    people[x]-=1;
    people[int(random(10))]+=1;
    rect(x_orig+x_margin*x, y_orig, x_shift, multi*people[x]);
//    total();
    }
}
