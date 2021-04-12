float [] largos = new float [10];
color [] colores = new color [10]; 

void setup() {
  size(600, 500);
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(10, 400);
    colores[i] = color(random(255), random(255), 200);
  }
}

void draw() {
  background(0);
  for (int i=0; i<largos.length; i++) {
    fill(colores[i]);
    rect(0, i*32, largos[i], 25);
    fill(0);
    text(i, 5, 18+i*32);
  }
}
