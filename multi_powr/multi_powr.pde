void setup() {
  size(800, 600);
  strokeWeight(2);
  line(0,550,800,550);
  line(400,0,400,600);
  strokeWeight(0);
}

void draw() {
  translate(400, 550);
  float x;
  float y;
  float add = 0.0001;
  for (x=-1.2; x<=1.2; x+=add) {
    //    y = 1/x;
    //    point(x*300, y*-300);
    //    y = x;
    //    point(x*300, y*-300);
    y = abs(x);
    point(x*300, y*-300);
    y = x * x;
    point(x*300, y*-300);
    //    y = x * x * x;
    //    point(x*300, y*-300);
    y = x * x * x * x;
    point(x*300, y*-300);
    //    y = x * x * x * x * x;
    //    point(x*300, y*-300);
    y = x * x * x * x * x * x;
    point(x*300, y*-300);
    y = x * x * x * x * x * x * x * x;
    point(x*300, y*=-300);
  }
}