void setup() {
  size(500, 500);
}

void draw() {

  for (int i=0; i<50; i++) {
    for (int j=0; j<50; j++) {
      fill(10*i, 10*j, i*j);
      rect(20*i, 20*j, 3*i, 3*j);
    }
  }
  
}
