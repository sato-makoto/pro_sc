void setup() {
  size(800,600);
  init();
}

void draw() {
  font = loadFont("IPAPMincho-48.vlw");
  textFont(font);
  textSize(60);
  if(i==last ){
//    fill(0);
//    rect(0,0,width,height);
    noLoop();
    w.close();
  }
  String ret = fizzbuzz(i);
  int [] c = colors();
  fill(c[0], c[1], c[2]);
  text (ret, int(random (width)),int(random(height)));
//  save_pictures(i);
  i+=1;
}
