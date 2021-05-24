PFont fuente; // Paso 1: decalrar la variable PFont
int tamano = 18;


void setup(){
  size(500, 300);
  fuente = createFont("Arial.ttf", tamano, false); // Paso 2: crear o "cargar" la fuente (nombre fuente, tamaño, antialias si/no)
  
}

void draw(){
  background(255);
  textFont(fuente, tamano); // Paso 3: especificar qué fuente usar. Puede ser distinto al inicial en el setup()
  fill(0); // Paso 4: especificar qué color
  
  stroke(175);
  line(width/2,0,width/2,height);

  textFont(fuente);       
  fill(0);

  textAlign(CENTER);
  text("Texto centrado",width/2,60); 

  textAlign(LEFT);
  text("Texto alineado izquierda",width/2,100); 

  textAlign(RIGHT);
  text("Texto alineado derecha",width/2,140); 
 
   
  
}
