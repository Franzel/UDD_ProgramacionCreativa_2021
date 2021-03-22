int nColumnas = 20;
int nFilas = 20;

void setup() {
  background(0);
  size(500, 500);
  colorMode(HSB, 360, 100, 100); //usaremos modo HSB, ver en referencia de processing
}

void draw() {
  background(0);
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      fill(random(255), random(255), random(255));//color random
      //fill(20*i, 5*j, 100); // gradiente
      ellipse(30*i, 30*j, 30, 30);
    }
  }
}