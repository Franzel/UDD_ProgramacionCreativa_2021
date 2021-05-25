String t;

void setup(){
 size(500,500); 
 t = "este es un texto en processing";
}

void draw(){
  background(0);
  textSize(18);
  fill(255,255,0);
  text(t, width/2, height/2, 100, 100);
}
