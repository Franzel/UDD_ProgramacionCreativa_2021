/*
Este ejemplo demuestra como podemos mapear un valor y asignarlo a una variable
Mapear es básicamente transformar un rango a otro rango,
tal como cuando transformamos metros a centímtros, o centímetros a pulgadas
ver como funciona la función "map" aca https://processing.org/reference/map_.html
*/

float r;
float g;
float b;

void setup(){
 size(500,500);
 
 //le damos valores inicialaes a las variables
 r = 255;
 g = 255;
 b = 255;
  
}

void draw(){
  background(255);
  
  float r = map(mouseX, 0, width, 0, 255); //mapeamos mouseX a 0-255 usando el ancho del canvas
  float g = map(mouseY, 0, height, 0, 255); //mapeamos mouseY a 0-255 usando el alto del canvas
  fill(r,g,b); //usamos las variabes para colorizar
  ellipse(mouseX, mouseY, 100, 100);
  
}
