
void setup() {
  size(500, 500);
}

void draw() {
  background(mouseX/2, mouseY/2);
  fill(mouseY/2);

  ellipse(mouseX, mouseY, 100, 100);
}
