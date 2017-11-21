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

int x_orig = 100;
int pic_num;
int x_shift =50;
int y_orig = 500;
int y_first = -100;
int y_shift = 0;
int x_margin = 65;
float multi = -1.2;

void present() {
  for(int x=0; x<10; x++)
  {
    people[x]-=1;
    people[int(random(10))]+=1;
    rect(x_orig+x_margin*x, y_orig, x_shift, y_first-people[x]);
  }
}
