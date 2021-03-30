float rot;
void setup() {
  size(500, 500);
  rectMode(CENTER);
  rot = 0;
}

void draw() {
  background(255);
  rot+=0.1;

  for (int i=0; i<10; i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rot*i));
    fill(0,10*i,20*i, 30);
    rect(0, 0, 10*i, 10*i);
    popMatrix();
  }
}
