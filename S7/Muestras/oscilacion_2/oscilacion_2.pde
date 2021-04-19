float vel;
float posX;
float posY;
float sizeX, sizeY;

float radius;

void setup() {
  size(800, 300);

  posX = width/2;
  posY = height/2;
  sizeX = 100;
  sizeY = 100;
  radius = 100;

  noStroke();
}

void draw() {
  background(0);

  posX = width/2 + sin(frameCount*0.1)*radius;

  fill(255);
  ellipse(posX, posY, sizeX, sizeY);
}
