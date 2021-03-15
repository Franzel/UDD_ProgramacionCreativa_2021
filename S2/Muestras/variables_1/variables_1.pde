float s;
float posX;
float posY;

void setup() { 
  s = 30;
  posX = 50;
  posY = 100;
  size(400, 400);
  background(255);
}

void draw() {
  fill(0,255,255);
  ellipse(posX, posY, s, s);
}
