float vel = 3;
float rot = 1;

int nFilas = 9;
int nColumnas = 9;

float[][] angulos = new float[nFilas][nColumnas];
float[][] velocidades = new float[nFilas][nColumnas];
float[][] tamanos = new float[nFilas][nColumnas];
color[][] colores = new color[nFilas][nColumnas];


void setup() {
  size(512, 512);
  rectMode(CENTER);
  randomizar(); //esta vez puse todo dentro de una funcion, solo para no repetir. 
}

void draw() {
  background(255);
  
  //llamar a la fiuncion randomizar cada cierta cantidad de cuadros
  if(frameCount%30==0){
    randomizar();
  }

  for (int i = 0; i < velocidades[0].length; ++i) {
    for (int j = 0; j < velocidades[1].length; ++j) {
      float miRot = angulos[i][j] += velocidades[i][j];
      figura(60 * i, 60 * j, tamanos[i][j], miRot, colores[i][j]);
    }
  }
}

void figura(int x, int y, float t, float r, color c) {
  pushMatrix();
  translate(x, y);
  noStroke();
  fill(c/3, 50);
  ellipse(0, 0, 50, 50);
  rotate(radians(r));
  fill(c);
  stroke(c*3);
  rect(0, 0, t, t);
  fill(c*2);
  ellipse(0, 0, 5, 5);
  rect(t / 2, 0, t / 4, t / 4);
  rect(- t / 2, 0, t / 4, t / 4);
  popMatrix();
}

void mousePressed() {
  randomizar();
}

void randomizar() {

  for (int i = 0; i < angulos[0].length; ++i) {
    for (int j = 0; j < angulos[1].length; ++j) {
      angulos[i][j] = random(360);
    }
  }

  for (int i = 0; i < velocidades[0].length; ++i) {
    for (int j = 0; j < velocidades[1].length; ++j) {
      velocidades[i][j] = random(- 1, 1);
    }
  }

  for (int i = 0; i < colores[0].length; ++i) {
    for (int j = 0; j < colores[1].length; ++j) {
      colores[i][j] = color(random(255), 200, 100 +random(155));
    }
  }

  for (int i = 0; i < tamanos[0].length; ++i) {
    for (int j = 0; j < tamanos[1].length; ++j) {
      tamanos[i][j] = random(20, 40);
    }
  }
}
