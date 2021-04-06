void setup() {
  size(800, 600);
}

void draw() {
  background(255);

  float distancia = dist(mouseX, mouseY, width/2, height/2);
  float distanciaMapped = map(distancia, 0, 500, 1, 0);
  dibujaCruz(width/2,height/2, distanciaMapped);


    //hacemos un doble for loop para dibujar "en grilla"
    //for (int i=0; i<10; i++) {
    //  for (int j=0; j<10; j++) {
    //    float distancia = dist(mouseX, mouseY, 100*i, 100*j);
    //    float distanciaMapped = map(distancia,0,1000, 1, 0);

    //    dibujaCruz(100*i, 100*j, distanciaMapped); //llamamos a nuestra funcion, y posicionamos cada unidad en su propio lugar
    //  }
    //}
}

void dibujaCruz(float centroX, float centroY, float dist) {
  pushMatrix();
  translate(centroX, centroY); 
  rotate(radians(mouseX)); 
  ellipse(0, 0, 40 * dist, 40 *dist); 
  line(0, -40*dist, 0, -80*dist); 
  line(40*dist, 0, 80*dist, 0); 
  line(0, 40*dist, 0, 80*dist); 
  line(-40*dist, 0, -80*dist, 0); 
  popMatrix();
}
