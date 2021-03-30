void setup(){
  size(500,500);
}

void draw(){
  background(255);
  ellipse(0,0,15,15);
  
  
  //translate(100,0);
  
  pushMatrix();
  translate(100,100);
  rotate(radians(mouseY));
  fill(255,255,0);
  rect(0,0,width,height);
  
  fill(0,255,0);
  rect(0,0,150,150);
  popMatrix();
   
  fill(255,0,0);
  ellipse(500,500,30,50);
  
}
