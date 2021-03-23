float posX;
float velDer;
float velIzq;

void setup() {
  size(800, 300);
  posX = width/2;
  velDer = 10;
  velIzq = 10;
}

void draw() {
  background(0, 150, 100);

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

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      posX = posX + velDer;
    }
    if (keyCode == LEFT) {
      posX = posX - velIzq;
    }
  }

  if (key=='s') {
    posX = posX + velDer;
  }
  if (key=='a') {
    posX = posX - velIzq;
  }
}
