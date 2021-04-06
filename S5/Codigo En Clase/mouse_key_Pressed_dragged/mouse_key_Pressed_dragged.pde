color miColor;
float tam;

void setup() {
  size(500, 500);
  miColor = color(255, 0, 0);
  tam = 100;
}

void draw() {
  background(255);
  fill(miColor);
  ellipse(width/2, height/2, tam, tam);
}

void mousePressed() {
  miColor = color(0, 255, 0);
  tam = 200;
}

void keyPressed() {
  if (key == '1') {
    miColor = color(0, 0, 255);
    tam = 30;
  }

  if (key == '0') {
    resetear();
  }
}

void mouseDragged() {
  miColor = color(255, 255, 0);
  tam ++;
}

void resetear() {
  miColor = color(255, 0, 0);
  tam = 100;
}
