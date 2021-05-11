float posX, posY;
float radio;
float centroX, centroY;

void setup(){
  size(500,500);
  radio = 50;
  centroX = width/2;
  centroY = height/2;
}


void draw(){
  background(255);
  noFill();
  ellipse(centroX, centroY, radio*2, radio*2);
  ellipse(centroX, centroY, 5,5);
  
  posX = centroX + cos(radians(270)) * radio;
  posY = centroY + sin(radians(270)) * radio;
  
  ellipse (posX, posY, 8, 8);
  
}
