/*
las funciones pueden ser para cualquier cosa,
en este caso la función dibujar() que creamos nosotros
va a simplemente dibujar algo, una elipse en este caso
Noten que esta función recibe 3 parámetros,
que vamos a usar para dar posicion y escala a la elipse
*/

void setup(){
  size(300,300);
}

void draw(){
  //La vamos a llamar 4 veces
  //Cada vez que la llamamos le damos los números que necesita
  dibujar(200,1,15);
  dibujar(0,0,100);
  dibujar(40,0,20);
  dibujar(100,100,38);
}

void dibujar(float x, float y, float s){
  ellipse(x,y,s,s);
}