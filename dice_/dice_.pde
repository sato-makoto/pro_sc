/*
とりあえずは棒グラフから
 */

void setup() {
  size(800, 600);
  background(0, 0, 0);
  stroke(50, 150, 80);
  line(100, 100, 100, 550);
  line(50, 500, 700, 500);

  stroke(150, 100, 80);
  fill(0, 0, 0);
  rect(200, 500, -50, rand());
}

float rand() {
  return random(-300);
}

int diving() {
  int div = int(random(7));
  if (div == 6) {
    return 3;
  } else {
    return div;
  }
}

Integer dice [];

void draw() {
}