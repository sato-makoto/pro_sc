void setup () {
  size(800, 600);
  translate(400, 300);
  float tri [] = {0, 0, 0, 0, 0, 0};
  for (int i = 0; i < 6; i++)
  {
    tri[i] = random(-300, 300);
  }
  triangle(
    tri[0], 
    tri[1], 
    tri[2], 
    tri[3], 
    tri[4], 
    tri[5]
    );
}