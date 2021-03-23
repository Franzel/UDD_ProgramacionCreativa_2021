color miColor;
float posX;

void setup() {
  size(500, 300);
  miColor = color(random(255));
}

void draw() {
  
  background(255);
  posX = random(width);
  miColor = color(random(0,80));
  fill(miColor);
  ellipse (posX,100,100,100);
}
