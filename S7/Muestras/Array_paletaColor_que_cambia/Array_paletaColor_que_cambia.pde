color selectColor;
color [] paleta = new color[4];
color [][] misColores = new color[10][10];

void setup() {
  size(500, 500);

  paleta[0] = color(255, 0, 0);
  paleta[1] = color(0,255, 0);
  paleta[2] = color(0, 0, 255);
  paleta[3] = color(50, 50, 0);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  if(frameCount%15==0){
      eligeColor();
  }

  for (int i = 0; i < 10; i++ ) {
    for (int j = 0; j<10; j++) {
      fill(misColores[i][j]);
      figura(i*60, j*60, 80);
    }
  }
}

void figura(int posX, int posY, int tam) {
  ellipse(posX, posY, tam/2, tam/2);
}

void eligeColor() {
  for (int i = 0; i < 10; i++ ) {
    for (int j = 0; j<10; j++) {
    misColores[i][j] = paleta [(int)random(3)];
    }
  }
}
