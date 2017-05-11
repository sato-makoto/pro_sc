// Processingをはじめよう 
// by Casey Reas and Ben Fry
// オライリージャパン 2011
// Page.95 変更

int radius = 40;
float x = -radius;
float speed = 7;
// float start = 0.52;
// float stop = 5.76;
float start = 0.32;
float stop = 5.96;
float step = 0.015;
void setup() {
  size(400,120);
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  if (x < 450){
  x += speed;
  start += step;
  stop -= step;
  arc(x, 60, radius, radius, start, stop);
  fill(220,20,60);
  ellipse(x+5,30, 2, 2);
  fill(255,255,255);
  saveFrame("frames/######.tif"); 
  } else {
    delay(2000);
    exit();
  }
  
}