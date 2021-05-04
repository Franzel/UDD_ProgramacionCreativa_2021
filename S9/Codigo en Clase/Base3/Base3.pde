//PASO 1: crear el array de objetos de la clase "Modulo"
Modulo [] misAnillos = new Modulo[100];

void setup() {
  size(800, 400);
  //PASO 2: rellenar el array con objetos Modulo
  for (int i=0; i<misAnillos.length; i++) {
    //                        color                                  ,posX ,posY      ,tamano        ,nAnillos
    misAnillos[i] = new Modulo(color(0, random(255), random(255), 40), 35*i, 200, random(10,40), int(random(1,10)));
  }
}

void draw() {
  background(255);
  
  //PASO 3: dibujar el array
  for (int i=0; i<misAnillos.length; i++) {
    misAnillos[i].dibuja();
    misAnillos[i].tirita();
    
  }
}
