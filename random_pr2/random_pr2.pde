PrintWriter w;
PFont font;
IntDict atoz;
int i = 0;

void setup() {
  size(800, 600);
  initconf();
  displaytitle();
}

void draw() {
  int last = present_times;
    intdic_display(atoz);
    displaytimes(i);
    display_amounts(atoz);
    disparity(atoz);
    displaygraph(atoz);
    present_and_sort(atoz);

    if (i == first || i == last) {
      save_picture(i);
    }
    if (i > last) {
      w.close();
      println(atoz);
      exit();
    }
    i += 1;
}
