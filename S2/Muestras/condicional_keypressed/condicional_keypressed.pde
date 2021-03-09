float c;
float s;

void setup() {
  size(500, 500);
  c = 0;
  s = 200;
}

void draw() {
  background(160,220,250);
  fill(c);
  ellipse(300, 300, s, s);
}

void keyPressed() {
  if(key == 'a'){
    c = 255;
    s=300;
  }
  if(key == 's'){
    c = 100;
    s = 100;
  }
}
