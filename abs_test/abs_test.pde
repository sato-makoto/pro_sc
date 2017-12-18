void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  translate(400, 300);
  rotate(PI);
  stroke(200, 50, 50);
  float x, y;
  rect(100, 100, 100, 100);
  for (x=-100; x< 200; x+=0.1)
  {
    y = abs(x);
    point(x, y);
  }
}