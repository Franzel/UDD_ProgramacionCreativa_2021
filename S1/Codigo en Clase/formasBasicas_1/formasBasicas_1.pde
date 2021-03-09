
void setup() {
  size(400, 400);
}

void draw() {
  fill(255,0,0);
  ellipse(100, 100, 160, 160);
  noFill();
  rect(100, 100, 80, 150);
  
  line(100,100,400,400);
  
  line(0,400,400,0);
}
