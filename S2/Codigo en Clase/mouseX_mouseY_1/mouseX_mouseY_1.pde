
void setup(){
  size(500,500);
}

void draw(){
  background(mouseY/2);
  fill(mouseX/2);
  ellipse(mouseX,mouseY, 200, 200);
  println(mouseX);
}
