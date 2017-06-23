void setup() {
  size(400, 300) ;
}

void draw() {
  for (int x=1; x<=400; x++) {
    for (int y=1; y<=300; y++) {
      stroke(random(256), random(256), random(256));
      point(x, y);
    }
  }
  noLoop();
}