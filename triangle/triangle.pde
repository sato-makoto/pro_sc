void setup() {
  size(800,600);
  background(0,0,0);
  stroke(200,50,80);
}


void draw (){
  float angle = 0.0;
  float xoffset = 400;
  float yoffset = 300;
  float scalar = 1;
  float speed = 2.1;
  float oldx = xoffset;
  float oldy = yoffset;
  for (int i = 0; i < 140; i++) {
  float x = xoffset + cos(angle) * scalar;
  float y = yoffset + sin(angle) * scalar;
  line(x, y, oldx, oldy);
  oldx = x;
  oldy = y;
  angle += speed;
  scalar += speed;
  }
}