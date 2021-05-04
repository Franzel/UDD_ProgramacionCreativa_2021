Modulo mod1;
Modulo mod2;
Modulo mod3;

void setup(){
  size(500,500);
  mod1 = new Modulo(color(0,0,255), 200, 200, 100, 7); //color, posX, posY, tamano, num repeticiones 
  mod2 = new Modulo(color(255,0,0), 300, 300, 40, 5);
  mod3 = new Modulo(color(255,0,0), 350, 350, 60, 4); 
}

void draw(){
  background(255);
  mod1.dibuja();
  mod1.tirita();
  
  mod2.dibuja();
  mod2.tirita();
  
  mod3.dibuja(); 
  
}
