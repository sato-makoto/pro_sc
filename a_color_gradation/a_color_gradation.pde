int r=100;
int g=200;
int size_x = 800;
int size_y = 600;
void setup() {
  size(800, 600);
}

int increse(float grad, float rate, int y) {
  while (grad < 1) {
    stroke(r, int(sin(grad)*256), g);
    line(1, y, size_x, y);
    y++;
    grad+=rate;
  }
  return y;
}  

int decrese(float grad, float rate, int y) {
  while (grad > 0) {
    stroke(r, int(sin(grad)*256), g);
    line(1, y, size_x, y);
    y++;
    grad-=rate;
  }
  return y;
}  

void draw() {
  int grad;
  int y = 1;
  float rate = 0.01;
  while (y <= size_y) {
    grad = 0;
    y = increse(grad, rate, y);
    grad = 1;
    y = decrese(grad, rate, y);
  }
  noLoop();
}