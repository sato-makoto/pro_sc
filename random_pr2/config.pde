void initconf() {
  background(0, 0, 0);
  stroke(50, 150, 80);
  strokeWeight(3);
  line(90, 80, 90, 550);
  line(60, 500, 750, 500);
  w = createWriter("frame/stills.txt");
}
// Intによる連想配列?
IntDict mkplist(){
  IntDict plist;
  plist = new IntDict();
  for (String x : dice) {
    plist.set(x, 100);
  }
  return plist;
}

// 最大、最小、格差を収めたint型の配列を返す
int [] max_min_deg(IntDict plist){
  int [] mmd ;
  mmd = new int[3];
  mmd[0] = max(plist.valueArray());
  mmd[1] = min(plist.valueArray());
  mmd[2] = (mmd[0] - mmd[1]);
  return mmd;
}
// 初期値の高さに赤い横線
void redline(){
  stroke(220,50,80);
  strokeWeight(1);
  line(80,350,750,350);
}

void black() {
  stroke(0,0,0);
  fill(0,0,0);
}
void white(){
  stroke(255,255,255);
  fill(255,255,255);
}

// global imutable parameters
String [] dice = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
int members = 10;
int x_orig = 110;
int x_shift = 35;
int y_orig = 500;
int y_shift = 0;
int x_margin = 60;
int first = 0;
// 贈与サイクルの繰り返し回数+1
int present_times = 1001;
float multi = -1.5;
