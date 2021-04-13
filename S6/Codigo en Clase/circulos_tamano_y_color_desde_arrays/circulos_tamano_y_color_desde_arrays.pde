//Declaramos los arrays (vacios por el momemnto), le asignamos un 'largo'
float [] misNumeros = new float [10];
color [] misColores = new color [10];

void setup() {
  size(800,300);
  //Escribir al array
  for (int i=0; i<misNumeros.length; i++) {
    misNumeros[i] = random(0,100); //rellenamos las casillas con numeros random
    misColores[i] = color(random(255)); //rellenamos las casillas con colores random
  }

  //Leer el array, solo para ver que numeros salieron. 
  for (int i=0; i<misNumeros.length; i++) {
    println(misNumeros[i] + "  " + misColores[i]);
  }
}

void draw() {
  background(255,0,0);
  for(int i=0;i<misNumeros.length;i++){
    fill(misColores[i]); //usamos el array para el color
    ellipse(50 * i, height/2, misNumeros[i], misNumeros[i]); //usamos el array para el tamano
  }
}

void mousePressed(){
  //Sobreescribir al array cuando aprieto mouse. notar que es lo mismo que hacemos en el setup()
  for (int i=0; i<misNumeros.length; i++) {
    misNumeros[i] = random(0,100);
    misColores[i] = color(random(255));
  }
}
