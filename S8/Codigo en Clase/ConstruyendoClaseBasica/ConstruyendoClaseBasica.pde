Modulo mod1;

void setup(){
  size(500,500);
  mod1 = new Modulo(color(0,0,255));
}

void draw(){
  background(255);
  mod1.dibuja();
  mod1.tirita();
  
}
