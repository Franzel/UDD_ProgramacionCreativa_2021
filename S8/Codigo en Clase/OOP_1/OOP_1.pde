Modulo mod;

void setup(){
  size(500,500);
  mod = new Modulo();
}

void draw(){
  mod.dibuja();
  mod.tirita();
  mod.col = color(0,255,0);
  mod.posY = mouseY;
}
