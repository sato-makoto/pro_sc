float sizex = 800;
int sizey = 600;
void setup() {
  size(800, 600) ;
  background(0, 0, 0);
}

void draw_line (int x, float y) {
  stroke(100, 150, 200);
  line(0, 300, x, 300);
  stroke(200, 100, 100);
  point(x, y);
  save("frame/sine" + nf(x, 3) + ".tif");
}

void draw() {
  strokeWeight(5);

  float y;
  float ysin=0;
  float theta = 0.0079;
  int ypeak = 250;
  int yshift = 300;
  for (int x = 0; x <= sizex; x++) {
    y=sin(ysin)*ypeak+yshift;   
    ysin+=theta;
    draw_line(x, y);
  }
  exit();
}