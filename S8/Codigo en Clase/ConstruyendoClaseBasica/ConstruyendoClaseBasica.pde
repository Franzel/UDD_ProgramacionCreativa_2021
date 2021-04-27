Modulo mod1;
Modulo mod2;

void setup(){
  size(500,500);
  mod1 = new Modulo(color(0,0,255));
  mod2 = new Modulo(color(0,255,200));
}

void draw(){
  background(255);
  mod1.dibuja();
  mod1.tirita();
  
  mod2.dibuja();
}
