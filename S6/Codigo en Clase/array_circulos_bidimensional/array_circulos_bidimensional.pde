int nElementos = 30;
float [][] misNumeros = new float [nElementos][nElementos];
color [][] misColores = new color [nElementos][nElementos];

void setup() { 
  size(500, 500);
  for (int i=0; i<nElementos; i++) {
    for (int j=0; j<nElementos; j++) {
      misNumeros[i][j] = random(0, 20);
      misColores[i][j] = color(random(255), random(255), random(255));
      println(i + " , " + j + "  :" + misNumeros[i][j]);
    }
  }
}

void draw() {
  background(0);
  for (int i=0; i<nElementos; i++) {
    for (int j=0; j<nElementos; j++) {
      fill(misColores[i][j]);
      ellipse(20*i, 20*j, misNumeros[i][j], misNumeros[i][j]);
    }
  }
}

void mousePressed() {
  //Sobreescribir al array cuando aprieto mouse. notar que es lo mismo que hacemos en el setup()
  for (int i=0; i<nElementos; i++) {
    for (int j=0; j<nElementos; j++) {
      misColores[i][j] = color(random(255), random(255), random(255));
      misNumeros[i][j] = random(0, 20);
      println(i + " , " + j + "  :" + misNumeros[i][j]);
    }
  }
}
