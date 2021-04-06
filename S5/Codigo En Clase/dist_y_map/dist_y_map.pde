float distancia = 0;

void setup(){
 size(500,500);

}

void draw(){
  background(255);
  distancia = dist(width/2,height/2,mouseX, mouseY);
  
  float distMap = map(distancia, 0, 350, 40,100);
  
  ellipse(width/2, height/2, distMap, distMap);
  println(distancia);

}
