//CLASE BASICA

class Modulo {
   //variables de la clase
    float posX, posY;
    float tam;
    color col;

    //Constructor
   Modulo(float x, float y, float t, color c){
       posX = x;
       posY = y;
       tam = t;
       col = color(c);

   }

    //Metodos. En este caso, solo tenemos 1 que dibuja
    void dibuja(){
        fill(col);
        ellipse(posX, posY, tam, tam);
    }

}
