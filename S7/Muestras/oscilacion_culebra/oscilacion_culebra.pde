float vel;
float posX;
float posY;
float size;

float radius;

void setup() {
  size(500, 800);

  posX = width/2;
  posY = 100;
  size = 100;
  radius = 100;

  noStroke();
}

void draw() {
  background(0);
  for (int i=0; i<200; i++) {
    posX = width/2 + sin(frameCount*0.05 + 0.3*i)*radius/2;
    fill(  127 + 127 * sin(frameCount*0.05 + 0.5*i),
           127 + 127 * sin(frameCount*0.05 + 0.3*i),
           127 + 127 * sin(frameCount*0.05 + 0.12*i));
    ellipse(posX, posY + 5*i, size/2 + size/4*sin(frameCount*0.05 + 0.12*i), size/2 + size/4*sin(frameCount*0.05 + 0.12*i));
  }
}
