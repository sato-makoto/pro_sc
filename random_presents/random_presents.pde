PrintWriter w;
PFont font;

void setup() {
  size(800, 600);
  initconf();
  display_players();
  displayxline();
  displaytitle();
}
int i = 0;
void draw() {
  if(i < present_times) {
    present();
    displaytimes(i);
    display_amounts();
    println();
//    save_picture(i, present_times);
    i+=1;
  } else {
    noLoop();
    w.close();
    println(present_times, "times!");
  }
}
