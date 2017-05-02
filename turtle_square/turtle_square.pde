void setup() {
  size(800,600);
  background(0,0,0);
}

int dict(int xy, int add_shift, int i)
{
  int i2;
  if (i % 2  !=  0) {
    i2 = i;
  } else {
    i2 = -i;
  }
  return xy + (add_shift * i2) ;
}

void draw() {
 int first_x = 400;
 int first_y = 300;
 int add_shift = 5;
 int x1 = first_x, y1 = first_y, x2 = first_x, y2 = first_y;
 int i; 

 stroke(200,50,80);
 x1 = first_x; y1 =first_y;
 for(i=1; i<101; i++) {
   x2 = dict(x2, add_shift, i);
   y2 = y1;
   line(x1,y1, x2,y2);
   /* println(i, x1, y1, x2, y2); */
   x1 = x2; y1 = y2;
   y2 = dict(y2, add_shift, i); 
   line (x1, y1, x2, y2);
   /* println(i,x1, y1, x2, y2); */
   x1 =x2; y1 = y2;
 }
 save("square_turtle.png");
}