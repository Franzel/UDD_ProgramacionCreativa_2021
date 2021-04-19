float posX;
float posY;
float sizeX, sizeY;
float vel;

float radio;

void setup() {
  size(600, 600);

  posX  = width/2;
  posY  = height/2;
  sizeX = 100;
  sizeY = 100;
  radio = 200;
  //noStroke();
}

void draw() {
  //background(0);
  
  vel  = frameCount*0.02;
  posX = width/2  + sin(vel)*radio;
  posY = height/2 + cos(vel)*radio;

  fill(255);
  ellipse(posX, posY, sizeX, sizeY);
}
