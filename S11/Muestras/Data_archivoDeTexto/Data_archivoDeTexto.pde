//Este ejemplo lee información de un archivo de texto (.txt)
String[] lineas;

void setup() {
  size(512, 512);
  lineas = loadStrings("mitexto.txt");
  println("El texto tiene " + lineas.length + " lineas.");
  printArray(lineas);
}

void draw() {
  background(0);
  for(int i=0;i<lineas.length; i++){
    text(lineas[i], 100, 100 + 30*i); 
  }
}
