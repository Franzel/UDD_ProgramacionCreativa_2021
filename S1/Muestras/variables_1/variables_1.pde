//francisco
//este codigo dibuja cosas
float s;
float posX;
float posY;

void setup() { 
  s = 100;
  posX = 0;
  posY = 100;
  size(400, 400);
  background(255);
  println("hola mundo");
}

void draw() {
  fill(255, 0, 0); //fill sirve para dar color al relleno
  noStroke();
  noFill();
  rect(width/2 - s/2, height/2 - s/2, s, s);
  rect(width/2 - s/2.4, height/2.4 - s/2, s, s);
  
  fill(0,255,255);
  ellipse(width/2, height/2, s, s);
}