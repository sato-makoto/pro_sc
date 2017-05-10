PrintWriter w;

void setup() {
  size(800,600);
  background(0,0,0);
  stroke(100,150,80);
  w = createWriter("stills.txt");
}

void mydraw (float speed, int num) {
  background(0,0,0);
  fill(0,0,0);
  float angle = 0.0;
  float xoffset = 400;
  float yoffset = 300;
  float scalar = 1;
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
  String filename = "triangle" + nf(num,3) + ".jpg";
  save(filename);
  w.println(filename);
  w.flush();
  
}

void draw() {
  float speed = 0.005;
  for(int num = 0; num < 1000; num++) {
    mydraw(0 + speed, num);
    speed += 0.005;
  }
  w.close();
  exit();
}