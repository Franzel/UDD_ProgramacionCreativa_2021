/*
 Antes de cualquier cosa tenemos que crear la fuente,
 que debe estar en una carpeta "Data" al lado del sketch.
 La manera mas facil es en Processing ir a menu Tools
 y crearla de esa manera.
 
 Cuidado con esa carpeta "data", si la movemos, todo dejara de funcionar
 
 Vean "textAlign" en la referencia de Processing, hay maneras de controlar
 el texto mas en detalle. 
 */


PFont miFuente; //declaramos una variable tipo PFont
int porteFuente; //variable para el tamano del texto

void setup() {
  size(600, 300);
  miFuente = loadFont("Arial-Black-24.vlw"); //asignamos la fuente misma a la variable.
  porteFuente = 24; 
  textFont(miFuente, porteFuente); //funcion para decir que fuente y que tamano vamos a usar
}


void draw() {
  background(0);
  text("holanda que talca", 100, 100); //dibujar el texto.
}