float posX, posY;
float radio;
float centroX, centroY;

void setup() {
  size(500, 500);
  radio = 50;
  centroX = width/2;
  centroY = height/2;
}


void draw() {
  background(255);
  noFill();
  ellipse(centroX, centroY, radio*2, radio*2);
  //ellipse(centroX, centroY, 5, 5);

  for (int i=0; i<10; i++) {
    posX = centroX + cos(radians(frameCount * 2)) * radio + 10*i;
    posY = centroY + sin(radians(frameCount * i)) * radio + 4*i;
    ellipse (posX, posY, 8, 8);
  }
}
