void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  //Esto no da el resultado esperado.
  //Con este metodo estamos rotando el canvas, no los elementos
  //rotate(radians(0)); 
  rotate(radians(mouseY));  //activar esto para rotar con el mouse
  fill(0,255,0);
  rect(0, 0, 50, 50);
  fill(255,0,0);
  rect(width/2, height/2, 100, 100);
  line(0, 0, width/2, height/2);
  
  stroke(50);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
