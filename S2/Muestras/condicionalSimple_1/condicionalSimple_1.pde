/*
ver tipo de data "color" en referencia de processing
 https://processing.org/reference/color_datatype.html
 Podria ser hecho con R, G, B por separado también
 */

color miColor; //delaramos una variable del tipo "color".

void setup() {
  size(300, 300); 
  miColor= color(0, 0, 0); //inicializamos la variable de color
}

void draw() {
  if (mouseX>width/2) {
    miColor = color(255, 0, 0);//rojo
  }

  fill(miColor);
  //background(255);
  ellipse(mouseX, mouseY, 50, 50);

  line(width/2, 0, width/2, height);
}