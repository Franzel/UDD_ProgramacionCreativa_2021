boolean cuadrao; // creamos una variable tipo boolean

void setup() {
  size(400, 200);
  rectMode(CENTER);
  cuadrao = true; // asignamos valor inicial
}
void draw() {
  background(255);
  print("boolean cuadrao es: " + cuadrao + " --- Entonces ");

  if (cuadrao == true) {
    // haz una cosa
    println("SOY un cuadrado");
    fill(#00C3DB);
    rect(width/2, height/2, 50, 50);
  } else {
    // haz otra cosa
    println("NO SOY un cuadrado");
    fill(#BADA55);
    ellipse(width/2, height/2, 50, 50);
  }
}

void mousePressed() {
  // el simbolo "!" significa "opuesto a"
  // es decir, si es verdadero, le asigna falso
  // y si es falso, le asigna verdadero
  cuadrao = !cuadrao;
}
