float rot;
void setup(){
  size(500,500);
  rectMode(CENTER);
  rot = 0;
}

void draw(){
  rot ++; // rot = rot+1
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot));
  rect(0,0, 100, 100); //centrado
  rect(50,0, 30, 30); //desplazado hacia la derecha
  rect(0,0, 5, 5); //centro
  popMatrix();
}
