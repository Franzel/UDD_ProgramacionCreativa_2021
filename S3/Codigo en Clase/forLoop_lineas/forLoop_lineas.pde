void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for (int i=0; i<100; i++) {
    stroke(3*i, 100,100);
    line(5*i, 0, 10*i, height);
  }
}
