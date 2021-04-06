float distancia = 0;
void setup(){
 size(500,500);

}

void draw(){
  background(255);
  
  //modo 1, normal
  //float tam = map(mouseX, 0, width, 0, 150);
  //ellipse(200,200, tam, tam);
  
  //modo 2, porcentual
  float porcentaje = map(mouseX, 0, width, 0, 1);
  ellipse(200,200, 300*porcentaje, 200*porcentaje);
  
    println("mouseX:" + mouseX + " tam:" + porcentaje);



}
