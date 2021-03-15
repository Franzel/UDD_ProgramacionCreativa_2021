float miColor; //definimos una variable, del tipo float

void setup() {
  size(500, 500);
  //background(0);
}

void draw() {

  miColor= random(255);

  //background(255);
  //fill(random(255)); //escala de grises
  fill(random(255), random(255), random(255)); //usamos random para el color
  ellipse(random(width), random(height), 30, 30); //posicionamos usando random, cuadro a cuadro
}