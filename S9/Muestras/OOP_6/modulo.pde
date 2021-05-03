//CLASE BASICA

class Modulo {
    //variables de la clase
    float posX, posY;
    float tam;
    color col;
    int nRepeticiones;
    float rot, vel;
    
    
    //Constructor
    Modulo(float x, float y, float t, color c, int n) {
        posX = x;
        posY = y;
        tam = t;
        col = c;
        nRepeticiones = n;
        rot = 0;
        
    }
    
    //Metodos. En este caso, solo tenemos 1 que dibuja
    void dibuja() {
        
        fill(col);
        stroke(col);
        noFill();
        //Aca usamos la variable int "nRepeticiones" para la cantidad de vueltas del for loop.
        //Entonces cada objeto va a dibujar una cantidad de repeticiones dada por lo que venga del sketch principal
        for (int i = 0; i < nRepeticiones; ++i) {
            pushMatrix();
            translate(posX, posY);
            rotate(radians(30*i + rot));
            rect(0,0, tam/4 + 3 * i, tam/4 + 3 * i );
            popMatrix();
        }
    }
    
    //Aca inventamos otro metodo. Este hace que la posX tirite cuadro a cuadro. 
    void tirita() {
        posX+= random(-1,1);
    }

    void rota(){
        rot += vel;
    }
} 
