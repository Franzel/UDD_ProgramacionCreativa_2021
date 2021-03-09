void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  
  background(255);
  if(mousePressed){
    ellipse(mouseX,mouseY,40,40);
  } else {
    rect(mouseX, mouseY, 50,50);
  }
}
