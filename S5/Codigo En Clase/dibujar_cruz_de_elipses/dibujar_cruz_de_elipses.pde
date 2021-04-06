void setup(){
  size(500,500);
}

void draw(){
  cruzCirculo(200,300,15);
}

void cruzCirculo (float cX, float cY, float sep){
  pushMatrix();
  translate(cX, cY);
  rotate(radians(45));
  
  ellipse(0,0,12,12);
  
  for(int i=0;i<5;i++){
    ellipse(sep*i, 0, 10, 10);
    ellipse(-sep*i, 0, 10, 10);
    ellipse(0, sep*i, 10, 10);
    ellipse(0, -sep*i, 10, 10);
  }
  popMatrix();
}
