float centroX;
float centroY;

void setup() {
  size(800, 600);
  //centroX = width/2;
  //centroY = height/2;
}

void draw() {
  background(255);
  //dibujemos la figura 3 veces en ubicaciones cualquiera
  //dibujaCruz(100,300);
  //dibujaCruz(400,400);
  //dibujaCruz(0,0);
  
  // dibujemos varias veces para el lado
  //for(int i=0; i<40; i++){
  //  dibujaCruz(50*i,20*i);
  //}
  
  //dibujemos varias veces en filas y columnas
  for (int i=0; i<width; i+=10) {
    for (int j=0; j<height; j+=10) {
      dibujaCruz(5*i, 2*j);
    }
  }
  
}

void dibujaCruz(float centroX,  float centroY) {
  ellipse(centroX, centroY, 20, 20);
  line(centroX, centroY - 40, centroX, centroY - 80);
  line(centroX+40, centroY, centroX+80, centroY);
  line(centroX, centroY + 40, centroX, centroY + 80);
  line(centroX-40, centroY, centroX-80, centroY);
}
