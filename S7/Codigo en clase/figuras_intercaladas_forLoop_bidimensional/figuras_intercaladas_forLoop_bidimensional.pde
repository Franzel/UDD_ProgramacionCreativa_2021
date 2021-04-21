void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  for (int i=0; i<20; i++) {
    for (int j=0; j<10; j++) {
      if (j%2==0 && i%2==0) {
        fig1(30*i, 30*j, color(255, 0, 0));
      } else {
        fig2(30*i, 30*j, color(255, 255, 0));
      }
    }
  }
}

void fig1(int x, int y, color c) {
  fill(c);
  ellipse(x, y, 20, 20);
}

void fig2(int x, int y, color c) {
  fill(c);
  rect (x, y, 20, 20);
}
