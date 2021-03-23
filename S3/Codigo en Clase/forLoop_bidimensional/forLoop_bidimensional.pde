void setup() {
  size(500, 500);
}

void draw() {
  for (int i=0; i<width; i+=10) {
    for (int j=0; j<height; j+=10) {
      rect(i, j, 5, 5);
    }
  }
}
