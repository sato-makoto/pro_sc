/*
ランダムな位置から、別のランダムな位置に直線を描画
を繰り返す
とりあえずは1000回で止まるようにする
*/
void setup()
{
  size(800,600);
  background(0,0,0);
  fill(100,200,100);
  stroke(100,200,100);
}

int oldx = 0;
int oldy = 0;
int i = 0;
int times = 1000;
int delay = 50;

void draw() {
  int x;
  int y;
  if (i == times)
  {
  println("end");
  noLoop();
  }

    x = int(random(800));
    y = int(random(600));
    ellipse(x,y,2,2);
    line(oldx,oldy,x,y);
    oldx = x;
    oldy = y;
    delay(delay);
    i++;
}
