//PASO 1: crear el array de objetos de la clase "Modulo"
Modulo [][] misAnillos = new Modulo[20][20];


void setup() {
  size(800, 400);
  //PASO 2: rellenar el array con objetos de la clase Modulo
  for (int i=0; i<20; i++) {
    for (int j=0; j< 17; j++) {
      misAnillos[i][j] = new Modulo(color(0, random(255), random(255), 40), 35*i, 35*j, 20, int(random(1, 10)));
    }
  }
}

void draw() {
  background(255);

  //PASO 3: llamamos a los metodos de cada objeto que estan guardados en el array
  for (int i=0; i<20; i++) {
    for (int j=0; j< 17; j++) {

      //misAnillos[i][j].col = color(255, 0, 0, 40);

      //float d = dist(mouseX, mouseY, misAnillos[i][j].posX, misAnillos[i][j].posY);
      //if (d<15) {
      //  misAnillos[i][j].tam = 50;
      //}
      //misAnillos[i][j].tam = 10;
      misAnillos[i][j].nRepeticiones = 5;
      misAnillos[i][j].dibuja();

      //misAnillos[i][j].tirita(random(5));
    }
  }
}

void mouseDragged() {
  for (int i=0; i<20; i++) {
    for (int j=0; j< 17; j++) {
      float d = dist(mouseX, mouseY, misAnillos[i][j].posX, misAnillos[i][j].posY);
      if (d<15) {
        misAnillos[i][j].tam = 50;
      }
    }
  }
}
