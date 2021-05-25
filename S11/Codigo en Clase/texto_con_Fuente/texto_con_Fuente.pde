PFont fuente; // paso 1 declarar variable PFont

void setup(){
  size(500,500);
  fuente = createFont("Arial.ttf", 20, false); //paso 2 crear fuente para processing
}

void draw(){
  background(255);
  textFont(fuente, 14);//paso 3, decir que fuente y tamaño
  
  
  float anchoTexto = textWidth("esta es arial bla bla bla bla");
  
  fill(0);
  rect(100,90,anchoTexto, 10);
  
  fill(255);
  text("esta es arial bla bla bla bla", 100, 100); //paso 4, dibujar
}
