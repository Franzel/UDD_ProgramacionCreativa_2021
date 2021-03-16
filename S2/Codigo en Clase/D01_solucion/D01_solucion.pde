
float tamEX;
float tamEY;
float tamCX;
float tamCY;

void setup() {
  size(400, 400);
  tamEX = width/2;
  tamEY = height/2;

  tamCX = width/3;
  tamCY = height/3;
}

void draw() {
  background(255);

  fill(255);
  rect(0, 0, tamCX, tamCY);
  fill(255, 0, 0);
  rect(width-tamCX, 0, tamCX, tamCY);
  fill(0, 255, 0);
  rect(0, height-tamCY, tamCX, tamCY);
  rect(width-tamCX, height-tamCY, tamCX, tamCY);


  fill(0, 0, 255, 127);
  ellipse(width/2, height/2, tamEX, tamEY);
}
