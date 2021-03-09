void setup() {
  size(400, 400);
}

void draw() {
  background(255); //fondo blanco

  strokeWeight(1);
  stroke(0, 0, 255); //linea azul
  fill(255, 0, 0); //relleno de color rojo
  rect(10, 50, 100, 100);

  strokeWeight(4);
  stroke(250, 150, 0); //linea naranja
  fill (0, 255, 0);//relleno de color verde
  rect (150, 50, 100, 100);

  noStroke(); //funcion para desactivar la linea de outline
  rect (290, 50, 100, 100); //queda de color verde porque es la ultima instruccion de relleno que recibió
}