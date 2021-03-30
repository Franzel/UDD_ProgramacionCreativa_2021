/*
En este caso la función dibujaCirculo() que creamos nosotros
 va a dibujar algo, una elipse en este caso.
 Noten que esta función recibe 2 parámetros (float x, float y)
 
 Para este ejemplo le vamos a entregar 2 números: mouseX y mouseY
 que se van a usar para dar posicion a la elipse,
 pero podría ser cualquier par de números que queramos. */

float posX;
float posY;

void setup() {
  size(500, 500);
  background(150, 230, 220); //colorizamos fondo
}

void draw() {
  //condicional, solo llama a la funcion cuando hay mousePressed
  if (mousePressed) {
    dibujaCirculo(mouseX, mouseY); //llamamos a la funcion dibujaCirculo() en cada cuadro


    /*En vez de dibujar en mouse la línea de abajo llama a la función para
     dibujar en cualquier parte del canvas.
     Eso es porque le damos 2 numeros random, la funcion las recibe y lo usa para posicionar la elipse.
     Des-comentar la línea de abajo para ver como funciona
     */
    //dibujaCirculo(random(width), random(height));
  }
}

/*
 La siguiente funcion dibuja un circulo
 Necesita dos parametros: x e y 
 Los numeros entrantes se usan para posicionar y dibujar una elipse
 */

void dibujaCirculo(float x, float y) {
  x += random(-10, 10);
  y += random(-10, 10);
  ellipse(x, y, 20, 20);
}