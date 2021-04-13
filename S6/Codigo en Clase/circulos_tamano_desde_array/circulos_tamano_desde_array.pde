float [] misNumeros = new float [10];

void setup() {
  size(800,300);
  //misNumeros[0] = 10;
  //misNumeros[1] = 20;
  //misNumeros[2] = 30;
  //misNumeros[3] = 40;
  //misNumeros[4] = 50;

  //Escribir al array
  for (int i=0; i<misNumeros.length; i++) {
    misNumeros[i] = random(0,100);
  }

  //Leer el array
  for (int i=0; i<misNumeros.length; i++) {
    println(misNumeros[i]);
  }
}

void draw() {
  background(0);
  for(int i=0;i<misNumeros.length;i++){
    ellipse(50 * i, height/2, misNumeros[i], misNumeros[i]);
  }
}

void mousePressed(){
  //Escribir al array
  for (int i=0; i<misNumeros.length; i++) {
    misNumeros[i] = random(0,100);
  }
  
}
