PrintWriter w;
PFont font;

void setup() {
  size(800, 600);
  initconf();
  display_players();
  displayxline();
  displaytitle();
  noLoop();
}

void draw() {
  int last = 2000;
  for(int i=0; i<last; i++) {
    present();
    save_picture(i, last);
  }
  w.close();
  println("2000 times!");
}
