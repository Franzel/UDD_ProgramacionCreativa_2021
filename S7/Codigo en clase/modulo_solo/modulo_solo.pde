
void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  modulo(width/2, height/2, 100);
}


void modulo(int posX, int posY, int tam) {
  rect(posX, posY, tam, tam);
  triangle( posX, posY, posX+tam/2, posY+tam/2, posX+tam/2, posY-tam/2);
  ellipse(posX, posY, 3, 3);
}
