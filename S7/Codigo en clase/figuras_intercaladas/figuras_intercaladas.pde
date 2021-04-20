void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);

  for (int i=0; i<20; i++) {
    if (i%2==0) {
      fig1(30*i, height/2, color(255,255,0));
    } else {
      fig2(30*i, height/2, color(255, 0, 255));
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
