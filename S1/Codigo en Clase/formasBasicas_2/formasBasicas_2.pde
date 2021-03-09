void setup() {
  size(500, 500);
}

void draw() {

  //line(0,height,width,0);
  
  fill(0,255,0);
  //stroke(255,0,0);
  strokeWeight(30);
  rect(width/2-15,0,width/2,height/2);
  
  fill(0,0,255);
  strokeWeight(1);
  stroke(0);
  ellipse(50,50,20,20);
}
