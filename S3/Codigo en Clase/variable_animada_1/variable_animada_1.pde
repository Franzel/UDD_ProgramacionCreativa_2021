float posX;
float velDer;
float velIzq;

void setup() {
  size(800, 300);
  posX = width/2;
  velDer = 8;
  velIzq = 2;
}

void draw() {
  background(255);

  if (mousePressed) {
    if (mouseX>width/2) {
      posX = posX + velDer;
    } else {
      posX = posX - velIzq;
    }
  }

  println(posX);
  ellipse (posX, height/2, 50, 50);
  line(width/2, 0, width/2, height);
}
