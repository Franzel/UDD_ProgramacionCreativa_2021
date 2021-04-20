color [] paleta1 = new color [3];
color [] paleta2 = new color [3];

void setup() {
  size(800, 400);
  rectMode(CENTER);

  paleta1[0] = color(#24FFEF);
  paleta1[1] = color(#B9E8BF);
  paleta1[2] = color(#E5DC2C);

  paleta2[0] = color(#00E036);
  paleta2[1] = color(#CE5132);
  paleta2[2] = color(#A432CE);
}

void draw() {
  background(255);
  for (int i=0; i<10; i++) {
    if (i%2==0) {
      modulo(80*i, height/2, 60, paleta1);
    }else{
      modulo(80*i, height/2, 60, paleta2);
    }
  }
}

void modulo(int posX, int posY, int tam, color[] c) {
  fill(c[0]);
  rect(posX, posY, tam, tam);
  fill(c[1]);
  triangle( posX, posY, posX+tam/2, posY+tam/2, posX+tam/2, posY-tam/2);
  fill(c[2]);
  triangle( posX, posY, posX-tam/3, posY-tam/3, posX-tam/3, posY+tam/3);
  ellipse(posX, posY, 3, 3);
}
