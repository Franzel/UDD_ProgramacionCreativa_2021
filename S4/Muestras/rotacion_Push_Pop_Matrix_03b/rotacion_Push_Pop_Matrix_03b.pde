/*
Ejemplo Push-Pop Matrix
Francisco Zamorano, 2018
*/

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);

  //Ahora que ya sabemos como rotar, hagámos un poco de FOR LOOP FUN!
  
  //En cada vuelta del loop rotaremos un poco, y haremos que cada cuadrado se vaya achicando
  for (int i=0; i<15; i++) {
    pushMatrix();
    translate(width/2, height/2); 
    rotate(radians(30*i)); 
    fill(255,0,0);
    rect(0, 0, 300-20*i, 300-20*i); 
    popMatrix();
  }
}
