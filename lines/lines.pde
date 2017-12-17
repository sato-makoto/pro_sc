// 長さ、方向、色のランダムな太い半透明の棒
// 50本で停止
void setup() {
  size(800,600);
  frameRate(10);
  background(0);
}

void lines() {
  int w = 30;
  int c1 = int(random(256));
  int c2 = int(random(256));
  int c3 = int(random(256));
  int a = int(random(800));
  int b = int(random(800));
  int c = int(random(800));
  int d = int(random(800));
  stroke(c1,c2,c3,200);
  strokeWeight(w);
  line(a,b,c,d);
 }
int l = 0;
void draw() {
  if (l >= 50) {
    println(l, "finish.");
    noLoop();
  }
  lines();
  l+=1;
}
