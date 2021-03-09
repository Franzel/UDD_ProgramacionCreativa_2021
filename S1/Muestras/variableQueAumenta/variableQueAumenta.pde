float tamX;
float tamY;

void setup() {
  size(400, 400);
  tamX = 0;
  tamY = 0;
}

void draw() {
  tamX = tamX +1;
  tamY = tamY +2;
  
  fill(tamX, tamY, 0);
  ellipse(200,200, tamX, tamY);
}
