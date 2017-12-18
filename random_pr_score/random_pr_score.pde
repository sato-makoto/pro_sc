PrintWriter w;
PFont font;
IntDict atoz;
int i = 0;

void setup() {
  size(800, 600);
  init();
}

int all = 0;
void draw() {
  if(all < present_times) {
    present_and_sort(atoz);
    all_circle(atoz);
    display_times(all);
    all += 1;
  } else {
    println(atoz);
    noLoop();
  }
}
