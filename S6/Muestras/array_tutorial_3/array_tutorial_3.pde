int nElementos = 15;
float [] largos = new float [nElementos];
color [] colores = new color [nElementos];
float alto = 20;

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
    rect(0, i*(alto + alto/2), largos[i], alto);
    fill(0);
    text(i, 5, 18+i*(alto + alto/2));
  }
}

void keyPressed() {
  if (key=='r') {
    randomizar();
  }
}

void randomizar() {
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(10, 400);
  }
}
