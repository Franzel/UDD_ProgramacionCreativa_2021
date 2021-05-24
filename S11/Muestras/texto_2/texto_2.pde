PFont fuente; // Paso 1: decalrar la variable PFont
int tamano = 24;


void setup(){
  size(500, 300);
  fuente = createFont("Arial.ttf", tamano, false); // Paso 2: crear o "cargar" la fuente (nombre fuente, tamaño, antialias si/no)
  
}

void draw(){
  background(255);
  textFont(fuente, tamano); // Paso 3: especificar qué fuente usar. Puede ser distinto al inicial en el setup()
  fill(0); // Paso 4: especificar qué color
  text("Texto en Processing!", 100,100); // Paso 5: Texto a dibujar (texto, posX, posY)
  
}
