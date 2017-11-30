PrintWriter w;
PFont font;

void setup() {
  size(800, 600);
  initconf();
  displaytitle();
  noLoop();
}

void draw() {
  int last = present_times;
  IntDict atoz = mkplist();
  for(int i=first; i<last; i++) {
    present_and_sort(atoz);
    intdic_display(atoz);
    displaytimes(i);
    display_amounts(atoz);
    disparity(atoz);
    displaygraph(atoz);
    save_picture(i, last);
  }
  w.close();
  println(atoz);
}
