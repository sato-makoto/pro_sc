PFont font;

void setup() {
  size(800, 600);
  strokeWeight(2);
  stroke(0, 0, 0);
  line(0, 300, 800, 300);
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  message();
}

// 凡例表示
void message()
{
  textSize(20);
  fill(0);
  text("sin:", 70, 450);
  stroke(150, 200, 110);
  line(120, 445, 160, 445);
  stroke(200, 110, 150);
  line(120, 475, 160, 475);
  text("cos:", 70, 480);
  stroke(110, 150, 200);
  line(120, 505, 160, 505);
  text("tan:", 70, 510);
}


void display(float s, float multi) {
  float tx = 0;
  float ty = 0;
  float sx = 0;
  float sy = 0;
  float cx = 0;
  // prevent to begin with y * cos(0) = 250
  float cy = -250;
  float y;

  for (int x=0; x<1000; x++) {
    stroke(200, 110, 150);
    y=multi*cos(s);   
    line(x, y, cx, cy);
    cx = x;
    cy = y; 
    stroke(150, 200, 110);
    y=multi*sin(s) ;
    line(x, y, sx, sy);
    sx = x; 
    sy = y;
    y=multi/20*tan(s);
    stroke(110, 150, 200);
    line(x, y, tx, ty);
    tx =x;
    ty = y;
    s+=0.003;
  }
}

void draw() {
  strokeWeight(2);
  // いくらか右にずらし、yの0が画面中心になるよう設定
  translate(-200, 300);
  // cos(0度)が1になるように
  display(0, -250);
  save("trigonometric_graph.png");
}