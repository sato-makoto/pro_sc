PFont font;
int i = 1;
String ret;
int x, y;
void setup() {
  size(800,600);
  background(0);
  fill(255);
  frameRate(3);
}

void draw() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(30);
  if(i % 15 == 0) {
    ret = "fizzbuzz";
  }else if(i % 5 == 0) {
    ret = "buzz";
  }else if(i % 3 == 0) {
    ret = "fizz";
  } else {
    ret = str(i);
  }
  
  if (mousePressed == true) {
     x = mouseX;
     y = mouseY;
      i+=1;

  }
   text (ret, x,y);
   }