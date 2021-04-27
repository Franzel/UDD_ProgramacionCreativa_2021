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
    col = c; //aca asigno "c" (que viene desde fuera) a "col", que es mi variable de la clase
  }

  //metodos
  void dibuja() {
    fill(col); //aca ocupo mi variable col
    ellipse(posX, posY, tam, tam);
  }
  void tirita() {
    posX += random(-1, 1);
  }
}
