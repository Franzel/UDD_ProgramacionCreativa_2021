color miColor;

void setup() {
  size(500, 500);
  miColor = color(0,255,255);
}

void draw() {
  background(255);
  fill(miColor);
  ellipse(width/2, height/2, 300, 300);
}
