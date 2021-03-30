float r;
float separacion = 50;
void setup() {
  size(500, 500);  
  r=45;
}
void draw() {
  background(255);
  fill(0, 255, 0);
  noFill();
  for (int i=0; i<12; i++) {
    for (int j=0; j<12; j++) {
      for (int k=0; k<5; k++) {
        fill(30+10*i, 50+2*i, 100, 20*k);
        ellipse(separacion*i, separacion*j, 10*k, 10*k); //juego con tamaño en X e Y
      }
    }
  }
}
