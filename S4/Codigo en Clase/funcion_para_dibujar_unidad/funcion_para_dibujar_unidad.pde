void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  
  //hacemos un doble for loop para dibujar "en grilla"
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      dibujaCruz(100*i, 100*j); //llamamos a nuestra funcion, y posicionamos cada unidad en su propio lugar
    }
  }
}

//esta es nuestra funcion, que va a dibujar 1 unidad. Va a tomar dos parametros tipo float
//el primer float 'centroX' va a definir el centro de la figura en X
//el segundo float 'centroY' va a definir el centro de la figura en Y
void dibujaCruz(float centroX,  float centroY) {
  pushMatrix();//abrimos la transformacion
  translate(centroX, centroY); //movemos momentaneamente el origen (0,0) a donde este ubicado nuestro centro
  rotate(radians(30)); //rotamos. recuerden que rota siempre en el 0,0 y ahora el 0,0 esta en nuestro centro
 
  //dibujamos todo, pero hacia arriba, a la izquierda, a la derecha y hacia abajo RELATIVO A NUESTRO CENTRO
  ellipse(0, 0, 20, 20); //justo al centro
  line(0, -40, 0, -80); //linea hacia arriba del centro
  line(40, 0, 80, 0); //linea hacia la derecha del centro
  line(0, 40, 0,  80); //linea hacia abajo del centro
  line(-40, 0, -80, 0); //linea hacia la izquierda del centro
  popMatrix(); //cerramos la transformacion
}
