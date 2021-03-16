float c = 40;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  if (c >= 100) {
    ellipse(width/2, height/2, 200, 200);
  } else {
    rect(width/2, height/2, 200, 200);
  }
}
