boolean bMayor;
color miColor;

void setup() {
  size(300, 300); 
  miColor= color(0, 0, 0);
}

void draw() {
  line(width/2, 0, width/2, height);

  // esta condicion es aun mas compleja, dice:
  // si apreto mouse y la posicion es mayor a la mitad, pinta azul
  // pero si AMBAS condiciones no se cumplen, y en cambio apreto el mouse pero la posicion es en el lado IZQ, pinta amarillo
  // en cambio, si solo se cumple que la posicion esta en el lado derecho, pinta rojo
  // si nincguna de las condiciones anteriores se cumple (click+Der, click+Izq, lado Der), entonces pinta verde
  if (mousePressed && mouseX>width/2 ) {
    miColor = color(0, 0, 255);//azul
  } else if (mousePressed && mouseX<width/2) {
    miColor = color(255, 255, 0);//amarillo
  } else if (mouseX>width/2) {
    miColor = color(255, 0, 0);//rojo
  } else {
    miColor=color(0, 255, 0);//verde
  }



  fill(miColor);
  ellipse(mouseX, mouseY, 50, 50);
}