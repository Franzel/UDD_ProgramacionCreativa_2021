int nCols = 50;
int nFilas = 50;
float[][] angulos = new float[nCols][nFilas];
float[][] velocidades = new float[nCols][nFilas];

void setup() {
  size(500, 500);
  for (int i = 0; i < angulos[0].length; ++i) {
    for (int j = 0; j < angulos[1].length; ++j) {
      angulos[i][j] = random(0, 360);
      velocidades[i][j] = random(-3,3);
    }
  }
  rectMode(CENTER);
}

void draw() {
  background(0);
  float rot;

  for (int i = 0; i < angulos.length; ++i) {
    for (int j = 0; j < angulos[1].length; ++j) {
      angulos[i][j] += velocidades[i][j];
      rotador(15 * i, 15*j, angulos[i][j] + velocidades[i][j], 10);
    }
  }
}

void rotador(float x, float y, float a, float s) {
  pushMatrix();
  translate(x, y);
  rotate(radians(a));
  rect(0, 0, s, s);
  popMatrix();
}
