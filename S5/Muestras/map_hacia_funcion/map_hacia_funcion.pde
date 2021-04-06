void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  float miRangoX = map(mouseX, 0, width, 0, 40);
  float miRangoY = map(mouseY, 0, width, 0, 40);

  //cuadrado(200, 200, miRangoX, miRangoY); //ver este solo y apagar el for loop para entender 

  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      cuadrado(50*i, 50*j, miRangoX, miRangoY);
    }
  }
}

void cuadrado(float posX, float posY, float distX, float distY) {
  pushMatrix();
  translate(posX, posY);
  //rotate(radians(distX*4 + distY));
  fill(255,0,0);
  rect(distX, distY, 10, 10);
  
  fill(255,255,0);
  rect(-distX, distY, 10, 10);
  
  fill(0,255,0);
  rect(-distX, -distY, 10, 10);
  
  fill(255);
  rect(distX, -distY, 10, 10);
  popMatrix();
}
