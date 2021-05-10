float posX;
float posY;
float sizeX, sizeY;
float vel;

float radio;
float counter=0; // creamos un contador que parte en cero

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);

  posX  = width/2;
  posY  = height/2;
  sizeX = 100;
  sizeY = 100;
  radio = 200;
  noStroke();
}

void draw() {
  //background(27);
  
  //este bloque es para que el contador sea ciclico, cuando llega a 360 vuelve a 0 y empieza de nuevo
  if (counter >360) {
    counter = 0; //si llega a 360, que se reinicie en 0
  } else {
    counter += 0.5; //mientras sea < a 360, que aumente
  }
  //println(counter);
  vel  = frameCount*0.03; //usamos esto para controlar la velocidad de rotacion
  posX = width/2  + sin(vel)*radio;
  posY = height/2 + cos(vel)*radio;

  fill(counter, 100, 100); //usamos el contador para ir cambiando el color progresiva y ciclicamente
  ellipse(posX, posY, sizeX, sizeY);
}
