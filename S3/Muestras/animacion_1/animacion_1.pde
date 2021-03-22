float posX, posY; //declaramos variables de posicion 
float r;

void setup() {
  posX= width/2;//valor inicial, al medio del canvas
  posY = height/2;//valor inicial, al medio del canvas
  size(600, 300);
  r = 10;//valor inicial
}

void draw() {
  background(255);
  
  r = r+1; //en cada loop del draw(), le sumamos 1
  posX = posX +1; //en cada loop del draw(), le sumamos 1
  
  println("valor de r es: " + r); //imprimimos a consola solo para ver el valor actual 
  
  //finalmente dibujamos
  fill(r, 0, 0);
  ellipse (posX, posY, 50, 50);
}
