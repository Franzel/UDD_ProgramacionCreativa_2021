float escala;

void setup(){
 size(500,500);
 frameRate(30);
}

void draw(){
//  background(200);
  escala = random(150);
  fill(random(255), random(255), random(255)); //random RGB
  ellipse(random(width), random(height),escala,escala); //posicion random
}