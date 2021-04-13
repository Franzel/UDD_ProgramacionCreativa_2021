
float[] tams = new float[64];

void setup() {
  size(512, 512); 
  //cuando decimos tams.length estamos pidiendo el "largo" de la lista o el "tamano del array"
  //definido arriba cuando creamos el array.
  //Aca en el setup estamos rellenando el array con una serie de numeros random.

  for (int i = 0; i < tams.length; i++) {
    tams[i] = random(100);
  }

  println(tams); //veamos los valores que nos dio el random
}

void draw() {
  background(0);
  noStroke();
  for (int i = 0; i < tams.length; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(TWO_PI/tams.length *i);
    float r = map(tams[i], 0, 100, 50, 255);
    float g = map(tams[i], 0, 100, 100, 255);
    fill(r, g, 0);
    rect(100, 0, tams[i], 3); //dibujemos barritas cuyo largo lo define el array
    text(round(tams[i]*10)*0.1, 100 + tams[i], 2);
    popMatrix();
  }
}

void randomizar() {
  for (int i = 0; i < tams.length; i++) {
    tams[i] = random(100);
  }
}

void mousePressed() {
  randomizar();
  println(tams); //veamos los valores que nos dio el random
}
