int nElementos;

void setup() {
  background(0);
  size(500, 500);
  nElementos = 300;
}

void draw() {
  background(0);
  for (int i=0; i<nElementos; i++) {
    stroke(2*i);
    line(0, 5*i, width, 5*i);
  }
}
