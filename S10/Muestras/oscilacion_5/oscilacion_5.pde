float posX;
float posY;
float sizeX, sizeY;
float vel;

float radio;

void setup() {
  size(600, 600);
  background(0);

  posX  = width/2;
  posY  = height/2;
  sizeX = 50;
  sizeY = 50;
  radio = 200;
  noStroke();
  
  colorMode(HSB, 360, 100, 100);
}



void draw() {
  //background(27);

  vel  = frameCount*0.05;
  float oscilacion = 180 + sin(vel)*180;
  
  posX = width/2  + sin(vel)*radio;
  posY = height/2 + cos(vel)*radio;
  sizeX  += sin(vel)*3;
  sizeY  += sin(vel)*3;
  
  fill(180 + sin(vel)*180, 70+cos(vel)*30, 90+cos(vel)*10);
  ellipse(posX, posY, sizeX, sizeY);
  
  println(posX + " , " + oscilacion);
}