void initconf() {
  background(0, 0, 0);
  stroke(50, 150, 80);
  strokeWeight(3);
  line(90, 80, 90, 550);
  line(60, 500, 750, 500);
  w = createWriter("frame/stills.txt");
}
// 初期値の高さに赤い横線
void redline(){
  stroke(220,50,80);
  strokeWeight(1);
  line(80,350,750,350);
}
/* check
void total() {
  int all = 0;
  for(int i=0; i<10; i++){
  all = all + people[i];
  }
  println(all);
}
*/

// global
int[] people = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
int x_orig = 100;
int pic_num;
int x_shift = 50;
int y_orig = 500;
int y_shift = 0;
int x_margin = 65;
int first = 0;
int present_times = 2000;
float multi = -1.5;
