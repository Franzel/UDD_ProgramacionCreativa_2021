float [] largos = new float [10];

void setup() {
  size(600, 500);
  for (int i=0; i<largos.length; i++) {
    largos[i] = 10 + 10*i;
  }
}

void draw() {
  background(0);
  for (int i=0; i<largos.length; i++) {
    fill(255, 0, 0);
    rect(0, i*32, largos[i], 25);
    fill(0);
    text(i, 5, 18+i*32);
  }
}
