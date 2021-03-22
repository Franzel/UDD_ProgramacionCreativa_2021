float espacio;

void setup() {
  size(800, 800);
  espacio = 20;
}

void draw() {
  background (250, 50, 250);
  
  //For loop biDimensional
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {
      rect(espacio * i, espacio * j, 10, 10);
    }
  }
}