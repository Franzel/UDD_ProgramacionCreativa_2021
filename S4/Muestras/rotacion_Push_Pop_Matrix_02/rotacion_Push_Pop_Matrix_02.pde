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

  fill(0, 255, 0);
  rect(0, 0, 50, 50); //cuadrado en la esquina, no rota

  //las funciones de Push-PopMatrix hacen que la rotacion solo afecte lo que este entremedio de ellas
  pushMatrix();//Empieza Aca
  translate(width/2, height/2); //trasladamos la matriz a donde actualmente esta la mitad del canvas
  //rotate(radians(30)); //rotamos 30 grados. Ojo que rotate() solo acepta radianes, por eso convertimos usando funcion radians()
  //rotate(radians(mouseY));  //activar esto para rotar con el mouse
  rotate(radians(millis()/10));  //activar esto para rotar automaticamente
  
  fill(255, 0, 0);
  rect(0, 0, 100, 100); //dibujamos la cosa
  popMatrix();//Transformaciones terminan aca y volvemos a la normalidad

  line(0, 0, width/2, height/2);
  stroke(50);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
