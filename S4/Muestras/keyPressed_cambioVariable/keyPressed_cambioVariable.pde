color col;// variable que usaremos para el color


void setup() {
  size(500, 500); 
  col = 0; // inicializamos variable
}

void draw() {
  background(col); //usamos la variable "col" para background
}

void keyPressed() {
  //si aprieto "a" col es un color random
    if (key=='a') { 
    col = color(random(255), random(255), random(255));
  }
  
  //si aprieto "s" col vale 0
  if (key=='s') {
    col=color(0);
  }
  
}
