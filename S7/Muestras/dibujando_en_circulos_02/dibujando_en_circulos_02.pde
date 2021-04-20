/*
Ejemplo para posicionar elementos en círculos.
 En este caso repetimos el proceso varias veces,
 para generar anillos concéntricos
 
 Francisco Zamorano, 2017
 */

float origenX, origenY;  //usaremos este para el centro de la circunferencia
float radioInicial; // radio de la circunferencia
int nElementos; //cantidad de cosas a dibujar
int nAnillos; //cuantas repeticiones para crear 'anillos'
float espacioAnillos; //separacion entre 'anillos' 

void setup() {
  size(500, 500);
  origenX = width/2; //mitad del ancho del canvas
  origenY = height/2; //mitad del alto del canvas
  radioInicial = 60; //inicializamos el radio, lo vamos a modificar despues
  nElementos = 36;
  nAnillos = 8;
  espacioAnillos = 20;
}

void draw() {
  //hagamos lo mismo que el ejemplo anterior (01),
  //pero ahora repitamoslo varias veces para crear anillos.
  //usamos un doble for loop para eso
  //El loop de 'i' determina cuantas veces dibujamos cada anillo
  //El loop de 'j' dibuja un solo anillo(ver ejemlplo anterior)
  //cada vez que dibujamos cada anillo incrementamos el radio,
  //asi en cada vuelta se va dibujando cada vez mas lejos del centro 
  background(255);

  for (int i = 0; i<nAnillos; i++) { //loop para crear anillos
    float radio = radioInicial + espacioAnillos*i; // en cada loop de 'i', incrementamos el radio en 20px

    for (int j = 0; j<nElementos; j++) { //loop para posicionar los elementos
      float angulo = (TWO_PI/nElementos) * j;
      float x = origenX + cos(angulo) * radio;
      float y = origenY + sin(angulo) * radio;
      ellipse(x, y, 10, 10);
    }
  }
}