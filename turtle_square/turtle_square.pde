/* turtle graphics */

void setup() {
  size(800,600);
  background(0,0,0);
  stroke(200,50,80);
}

int add_del(int i) {
  if (i %2 == 1) {
    return i;
  } else {
    return i * -1;  }
}
    
void draw() {
  int x1, y1, x2, y2;
  int x_init, y_init;
  int add, i, last;

  x_init = 400; y_init = 300;
  x1 = x_init; y1 = y_init;
  x2 = x_init; y2 = y_init;
  add = 5; last = 101;
    
  for(i=1; i < last; i++){
    x2 = x1 + add * add_del(i);
    line(x1,y1,x2,y2);
    x1 = x2; y1 = y2;
    y2 = y1 + add * add_del(i);
    line(x1,y1,x2,y2);
    x1 = x2; y1 = y2;
  }
 
  save("square_turtle.png");
}
