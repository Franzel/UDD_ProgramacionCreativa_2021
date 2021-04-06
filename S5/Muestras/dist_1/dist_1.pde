float centroX, centroY;
color miColor = color(255);

void setup() {
  size(800, 600);
  centroX = width/2;
  centroY = height/2;
}

void draw() {
  background(0);
  float distancia = dist(mouseX, mouseY, centroX, centroY); //distancia entre dos puntos
  println(distancia);

  /*
    la funcion map es para escalar rangos(ver en la documentacion de processing para mas detalle).
   Aca el numero resultante es entre 0 y 1, es decir como un porcentaje,
   lo que es muy util porque ese porcentaje se lo aplicamoa a lo que queramos.
   */
  float distMap = map(distancia, 0, 500, 1, 0); 

  miColor = color(255*distMap, 255*distMap, 100);

  fill(miColor);
  ellipse(centroX, centroY, 100 * distMap, 100*distMap);
}
