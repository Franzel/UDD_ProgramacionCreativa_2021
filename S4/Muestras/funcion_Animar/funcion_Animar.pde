/*
Este código demuestra el uso de una función que es creada especialmente
 */

float posX, posY;  //variables para posicion
float s;  // variable para tamaño

void setup() {
  size(300, 300);

  //inicializamos las variables
  posX = width/2;
  posY = height/2;
  s = 30;
}

void draw() {
  background(255);
  
  //Si apretamos mouse, llamamos a la función tirita
  if (mousePressed) {
    tirita();
  }
  //Luego dibujamos la elipse
  ellipse(posX, posY, s, s);
}

void tirita() {
  // Desde el draw() llamamos a esta función
  // Esta función lo unico que hace es sumar un poco de random a posX y posY
  posX += random(-10, 10);
  posY += random(-10, 10);
}