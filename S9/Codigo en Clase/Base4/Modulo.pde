//clase basica
class Modulo {
  //variables de la clase
  float posX, posY;
  float tam;
  color col;
  int nRepeticiones;

  //constructor
  Modulo(color c, float x, float y, float t, int n) {
    posX = x;
    posY = y;
    tam = t;
    col = c; //aca asigno "c" (que viene desde fuera) a "col", que es mi variable de la clase
    nRepeticiones = n;
  }

  //metodos
  void dibuja() {
    noFill();
    //noStroke();
    fill(col); //aca ocupo mi variable col
    for(int i=0;i<nRepeticiones;i++){
      ellipse(posX, posY, tam/4 *i , tam/4 *i );
    }
  }
  
  void tirita(float a) {
    posX += random(-a, a);
  }
}
