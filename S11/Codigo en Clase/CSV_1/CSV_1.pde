Table tabla; //paso1 crear variable tipo Table

void setup(){
  size(800, 400);
  tabla = loadTable("temperaturas.csv", "header");//paso2 cargar la info de la tabla (csv) en la variable
  println(tabla.getRowCount()); //esto imprime la cantidad total de filas
}

void draw(){
  background(255);
  for (int i=0 ; i<tabla.getRowCount(); i++){
    
    int v0 = tabla.getInt(i,0);
    fill(0);
    textSize(10);
    text(v0, 50 +22*i, 200);
    
    float v1 = tabla.getFloat(i,1);
    textSize(10);
    text(str(v1), 50 + 22*i, 180);
    
    float v2 = tabla.getFloat(i,2);
    textSize(6);
    text(str(v2), 50 + 22*i, 160);
    rect(50 + 22*i, 100, 10, -v2*3);
    
  }
}
