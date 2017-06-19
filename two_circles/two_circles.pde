/*
  同心円２つで干渉縞とか
 */
void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  noFill();


  strokeWeight(1.5);
  int times = 0;
  for (float r = 300; r>10; r-=15)
  {
    times+=1;
    stroke(200, 100, 100);
    ellipse(300, 300, r, r);
    stroke(100, 200, 100);
    ellipse(500, 300, r, r);
    save("frame/t_c" + nf(times, 3) + ".jpg");
  }

  exit();
}