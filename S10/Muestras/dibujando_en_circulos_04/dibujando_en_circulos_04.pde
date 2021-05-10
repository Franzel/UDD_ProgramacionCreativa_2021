/*
 Basado en el ejemplo anterior(03),
 Integramos animación.
 Francisco Zamorano, 2017
 */

float origenX, origenY;  //usaremos este para el centro de la circunferencia
float radioInicial; // radio de la circunferencia
int nElementosInicial; //cantidad de cosas a dibujar
int nAnillos; //cuantas repeticiones para crear 'anillos'
float espacioAnillos; //separacion entre 'anillos' 

void setup() {
  size(600, 600);
  origenX = width/2; //mitad del ancho del canvas
  origenY = height/2; //mitad del alto del canvas
  radioInicial = 50; //inicializamos el radio, lo vamos a modificar despues
  nElementosInicial = 24;
  nAnillos = 15;
  espacioAnillos = 15;
  colorMode (HSB, 360, 100, 100);
}

void draw() {
  background(0,0,10);
  for (int i = 0; i<nAnillos; i++) { //loop para repetir anillos
    float radio = radioInicial + espacioAnillos*i; // en cada loop de 'i', incrementamos el radio en 20px
    int nElementos = nElementosInicial + 12*i; //en cada anillo, incrementamos en 12 la cantidad de elementos
    float hue = 100 + i*7; //esta es una tecnica para limitar que un numero no crezca eternamente, el operador "módulo"(%) genera un ciclo.
    color miColor = color(hue, 100, 100);

    //dibujemos un anillo
    for (int j = 0; j<nElementos; j++) { //loop para posicionar los elementos
      float angulo = (TWO_PI/nElementos) * j;
      float x = origenX + cos(angulo) * (radio + sin(frameCount*0.1)*espacioAnillos);
      float y = origenY + sin(angulo) * (radio + sin(frameCount*0.1)*espacioAnillos);
      miDibujo(x, y, 10, 10, miColor); //en vez de dibujar directo aca, llamamos a una funcion. Esto es opcional por supuesto
    }
  }
}

void miDibujo(float x, float y, float tX, float tY, color c) {
  tX/=2;
  tY/=2;
  fill(c);
  noStroke();
  ellipse(x, y, tX, tY);
  noFill();
  stroke(c,150);
  ellipse(x, y, tX*2, tY*2);

}