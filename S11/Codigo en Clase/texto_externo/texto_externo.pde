String [] lineas;  // paso 1 crear un array de lineas

void setup(){
  size(500,500);
  lineas = loadStrings("mitexto.txt");//paso 2 copiar las lineas en el array
  printArray(lineas);
  
}

void draw(){
  background(0);
  for(int i=0; i<lineas.length; i++){
    text(lineas[i], width/2, 100 + 20*i);
  }
  
  text(lineas[4], 100, 300);
}
