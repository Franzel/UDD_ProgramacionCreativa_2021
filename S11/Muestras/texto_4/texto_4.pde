PFont fuente; // Paso 1: decalrar la variable PFont
int tamano = 18;
String miTexto1, miTexto2;

void setup() {
  size(500, 300);
  fuente = createFont("Arial.ttf", tamano, false); // Paso 2: crear o "cargar" la fuente (nombre fuente, tamaño, antialias si/no)
  miTexto1 = "Texto laaaaaaaaaaaaaaaaaaaargo";
  miTexto2 = "Texto corto";
}

void draw() {
  background(255);
  fill(0); // Paso 4: especificar qué color
  textFont(fuente, 18);       

  fill(0);
  text(miTexto1, 100, 60);
  float ancho1 = textWidth(miTexto1);
  fill(255, 0, 0);
  rect(100, 60, ancho1, 18);
  
  fill(0);
  text(miTexto2, 100, 120);
  float ancho2 = textWidth(miTexto2);
  fill(255, 0, 0);
  rect(100, 120, ancho2, 18);
}
