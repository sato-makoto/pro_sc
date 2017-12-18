// 初期実行処理
void init() {
  background(0,0,0);
  w = createWriter("frame/stills.txt");
  frameRate(20);
  atoz = new IntDict();
  atoz = mkplist();
}

void lines() {
  // 横線
    stroke(50,50,50);
    for(int y = first_y; y < 501; y+=shift_y) {
      line(50,y, 750,y);
    }
  // 縦線
    stroke(0,0,100);
    for(int w = 60; w < 800; w+=75)
    {
      line(w, 50, w, 500);
    }
    //中央線(赤)
/*    stroke(100,0,0);
    line(20,275,780,275);
    line(400,20,400,580);
*/
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

int indexing(IntDict plist, String n) {
  int i = 0;
  String [] list = plist.keyArray();
  for(String x : list) {
    if(x == n) {
      break;
    }
    i++;
  }
  return i;
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
void black() {
  stroke(0,0,0);
  fill(0,0,0);
}
void white(){
  stroke(255,255,255);
  fill(255,255,255);
}

// 贈与サイクルの繰り返し回数
int present_times = 1000;
int members = 10;
int center = 400;
int first_x = 60;
int shift_x = 75;
int first_y = 50;
int shift_y = 50;
float multi = -1.5;
int circle_r = 10;
String[] dice = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
IntDict people = mkplist();
