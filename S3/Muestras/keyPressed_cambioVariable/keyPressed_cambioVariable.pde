float col;// variable que usaremos para el color


void setup() {
  size(500, 500); 
  col = 0; // inicializamos variable
}

void draw() {
  background(col); //usamos la variable "col" para background
}

void keyPressed() {
  
  //si aprieto "a" col vale 255
  if (key=='a') { 
    col=255;
  }
  
  //si aprieto "s" col vale 0
  if (key=='s') {
    col=0;
  }
  
}
