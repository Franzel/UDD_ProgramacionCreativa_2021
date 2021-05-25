//Este ejemplo lee información de un archivo de texto (.txt)

void setup() {
  size(512, 512);
  String[] lineas = loadStrings("mitexto.txt");
  println("El texto tiene " + lineas.length + " lineas.");
  printArray(lineas);
}

void draw() {
  
  
}
