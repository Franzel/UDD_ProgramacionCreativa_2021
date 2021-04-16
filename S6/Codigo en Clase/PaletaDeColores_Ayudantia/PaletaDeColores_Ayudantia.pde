int selectColor;
color [] colores = new color [4];

void setup() {
  size(500, 500);

  colores[0] = color(255, 0, 0);
  colores[1] = color(200, 0, 0);
  colores[2] = color(0, 0, 150);
  colores[3] = color(100, 0, 0);

  // Hace que el draw se reprodusca 5 cuadros x seg en vez de 60
  frameRate(5);

  rectMode(CENTER);
}

void draw() {
  background(255);

  for (int i = 0; i < 10; i++ ) {
    for (int j = 0; j<10; j++) {

      selectColor = color(colores[(int)random(0, 4)]);
      fill(selectColor);
      dib2(i*60, j*60, 80);
    }
  }
}

void dib1(int posX, int posY, int tam) {
  triangle(posX, posY-tam/2, posX-tam/2, posY+tam/2, posX+tam/2, posY+tam/2);  
}
//tam = 40
void dib2 (int posX, int posY, int tam) {
  quad(posX+tam/2, posY, posX+tam, posY-tam/2, posX+tam/4, posY-tam/2, posX, posY-tam);
  
}
