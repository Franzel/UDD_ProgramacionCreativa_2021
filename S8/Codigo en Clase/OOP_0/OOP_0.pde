float posX, posY;
float tam;
color col;

void setup(){
  size(500,500);
  posX = 100;
  posY = 200;
  tam = 45;
  col = color(255,0,0);
}

void draw(){
  dibuja();
  tirita();
}

void dibuja(){
  fill(col);
  ellipse(posX, posY, tam, tam);
}
void tirita(){
  posX += random(-1,1);
}
