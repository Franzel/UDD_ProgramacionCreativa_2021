//clase basica
class Modulo {
  //variables de la clase
  float posX, posY;
  float tam;
  color col;

  //constructor
  Modulo(color c) {
    posX = 100;
    posY = 200;
    tam = 45;
    col = c;
  }

  //metodos
  void dibuja() {
    fill(col);
    ellipse(posX, posY, tam, tam);
  }
  void tirita() {
    posX += random(-1, 1);
  }
}
