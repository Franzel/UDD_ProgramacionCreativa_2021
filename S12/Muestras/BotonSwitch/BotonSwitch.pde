Button botonInfo;
Button [] botones = new Button[7];

void setup() {
  size(512, 512);
  botonInfo = new Button(30, height-height/4, 20, 20, color(0));
  for (int i = 0; i < botones.length; ++i) {
    botones[i] = new Button(100 + 50*i, width/2, 30, 30, color(100, 0, 100));
  }
}

void draw() {
  background(255);

  for (int i = 0; i < botones.length; ++i) {
    botones[i].encima(mouseX, mouseY);
    botones[i].dibuja();
  }

  botonInfo.encima(mouseX, mouseY);
  botonInfo.dibuja();
  if (botonInfo.activo) {
    dibujarInfo(30, height - height/4, width/2, height/4 -30);
  }
}

void mousePressed() {
  for (int i = 0; i < botones.length; ++i) {
    botones[i].clickea();
  }
  botonInfo.clickea();
}

void dibujarInfo(float px, float py, float tx, float ty) {

  fill(0, 100);
  noStroke();
  rect(px, py, tx, ty);
  fill(255);
  textAlign(LEFT);
  text("informacion sobre mi proyecto\nMe encanta mi proyecto", px + 30, py + 30 );
}
