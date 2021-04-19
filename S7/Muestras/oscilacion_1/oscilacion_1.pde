float vel;
float posX;
float posY;
float sizeX, sizeY;

void setup() {
  size(800, 300);
  background(0);
  posX = width/2;
  posY = height/2;
  sizeX = 100;
  sizeY = 100;
  noStroke();
}

void draw() {
  fill(255);
  ellipse(posX, posY, sizeX, sizeY);
}
