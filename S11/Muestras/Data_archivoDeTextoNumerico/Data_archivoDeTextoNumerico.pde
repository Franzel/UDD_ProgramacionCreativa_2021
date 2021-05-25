//Este ejemplo lee información de un archivo de texto con numeros
//conocido como CSV (Comma separated values). El archivo debe tener la extension .csv
//El csv es comun por ejemplo en tablas que vienen de Excel o Google Sheets

int[] data;

void setup() {
  size(500, 200);
  // Cargar el archivo como un array de strings
  String[] numeros = loadStrings("data.csv");
  
  // convertir los strings a ints, usando la funcion split() y la coma
  // ver mas sobre split() en la documentaci'on de processing
  data = int(split(numeros[0], ','));
}

void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i<data.length; i++) { 
    //usar la informacion guardada en el array para dibujar y pintar barras
    fill(data[i] * 10, 0, 0);
    rect(i*50,150, 20, -data[i]);
    text(data[i], i*50, 170);
  }
}
