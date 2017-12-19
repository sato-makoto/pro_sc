void save_pictures(int i){
  save("frame/fizzbuzz" + nf(i, 4) + ".jpg");
  w.println("fizzbuzz" + nf(i, 4) + ".jpg");
  w.flush();
}
String fizzbuzz(int i) {
  String ret;
  if(i % 15 == 0) {
    ret = "fizzbuzz";}
  else if(i % 5 == 0) {
    ret = "buzz";}
  else if(i % 3 == 0) {
    ret = "fizz";}
  else {
    ret = str(i);}
  return ret;
}

int [] colors() {
  int [] cols = new int[3];
  for(int i=0; i<3; i++) {
  cols[i] = int(random(256));
  }
  return cols;
}
