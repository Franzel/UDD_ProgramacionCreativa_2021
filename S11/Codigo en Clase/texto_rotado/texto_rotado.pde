String t;

void setup(){
 size(500,500); 
 t = "este es un texto en processing";
}

void draw(){
  background(0);
  textSize(18);
  fill(255,255,0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  text(t, 0, 0, 100, 100);
  popMatrix();
}
