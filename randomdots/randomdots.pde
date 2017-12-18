void setup() {
  background(0);
  size(800, 600) ;
  stroke(255);
}

int i = 0;
void display() {
      ellipse(int(random(width)),int(random(height)),2,2);
}
 

void draw() {
  if (i < 5000) {
    display();
    i+=1;
    if (i%100==0) {
      println(i);
    }
  }else{
    println("end");
    noLoop();
  }
}