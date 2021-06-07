

Boton botonInfo; //un boton solo para desplegar información de texto en un cuadrito
Boton [] botones = new Boton[7];
String info;

void setup() {
  size(512, 512);
  info = "informacion sobre mi proyecto\nMe encanta mi proyecto\nMi proyecto es hermoso";

  botonInfo = new Boton(30, height-height/4, 20, 20, color(0), "más información", "ACTIVO");
  
  for (int i = 0; i < botones.length; ++i) {
    botones[i] = new Boton(100 + 50*i, width/2, 30, 30, color(100), "texto guia", "ACTIVO");
  }
}

void draw() {
  background(255);

  for (int i = 0; i < botones.length; ++i) {
    botones[i].dibuja();
  }

  botonInfo.dibuja();
  
  //podemos ver el estado del botón (verdadero o falso), en base a eso desplegamos o no el cuadrito de información
  //la información se dibuja a traves de la función dibujarInfo()
  if (botonInfo.activo) {
    dibujarInfo(30, height - height/4, width/2, height/4 -30);
  }
}

void mousePressed() {
  //cuando apretamos mouse, llamamos al método clickea() de cada botón.
  for (int i = 0; i < botones.length; ++i) {
    botones[i].clickea();
  }
  botonInfo.clickea();
}

void dibujarInfo(float px, float py, float tx, float ty) {
  fill(0, 100);
  rect(px, py, tx, ty);
  fill(255);
  textAlign(LEFT);
  text(info, px + 30, py + 30 );
}
