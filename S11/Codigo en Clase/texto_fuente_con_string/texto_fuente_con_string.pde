PFont fuente; // paso 1 declarar variable PFont
String miTexto;

void setup(){
  size(500,500);
  fuente = createFont("Arial.ttf", 20, false); //paso 2 crear fuente para processing
  miTexto = "aisjdoaijsdoiajsdoiajdso";
}

void draw(){
  background(255);
  textFont(fuente, 14);//paso 3, decir que fuente y tamaño
  
  
  float anchoTexto = textWidth(miTexto);
  
  fill(0);
  rect(100,90,anchoTexto, 10);
  
  fill(255);
  text(miTexto, 100, 100); //paso 4, dibujar
}
