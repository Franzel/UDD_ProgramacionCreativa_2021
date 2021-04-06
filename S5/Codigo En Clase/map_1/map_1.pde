void setup(){
 size(800,500);

}

void draw(){
  background(255);
  //rect(mouseX/8, 200, 100, 100);
  
  float mapX = map(mouseX, 0, 800, 300, 0);
  float col = map(mouseX, 0, 800, 255, 0);
  //(que variable, min del original, max de original, min salida, max salida)
  
  println("mouseX: " + mouseX + " mapX: " + mapX);
  
  rect(mapX, 200, 100, 100);
  fill(col, 0, 0);
  ellipse(100,100,mapX, mapX);
}
