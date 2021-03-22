float tam;
float col;
float colB;
void setup() {
  size(500, 500);
  tam = 100;
  col = 255;
  colB=255;
}
void draw() {
  background(colB);
  if (mousePressed) {
    fill(col, 0, 0);
    ellipse(mouseX, mouseY, tam, tam);
  }
}
void mousePressed() {
  col = 255;
}
void mouseDragged() {
  col = 0;
}
void keyPressed() {
  if (key== 'a') {
    colB = 100;
  }
}