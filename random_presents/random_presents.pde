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
  for(int i=0; i<1000; i++) {
    present();
    println(i);
  }
}
