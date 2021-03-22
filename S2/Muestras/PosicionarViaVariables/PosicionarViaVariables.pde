float tamX;
float tamY;

void setup() {
  tamX = 100;
  tamY = 100;
  size(600,345);
}

void draw() {
  rect(0,0,tamX,tamY);
  rect(width-tamX, height-tamY, tamX, tamY);
  rect(width-tamX,0,tamX,tamY);
  rect(0,height-tamY,tamX,tamY);
  ellipse(width/2,height/2,tamX,tamY);
  
  
}
