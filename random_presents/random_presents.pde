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
  int last = present_times;
  for(int i=first; i<last; i++) {
    present();
    displaytimes(i);
    display_amounts();
    save_picture(i, last);
  }
  w.close();
  println(present_times, "times!");
}
