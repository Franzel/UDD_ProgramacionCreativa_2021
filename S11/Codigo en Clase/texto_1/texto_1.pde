String t;

void setup(){
 size(500,500); 
 t = "este es un texto en processing";
}

void draw(){
  background(0);
  textSize(100);
  textAlign(RIGHT);
  fill(255,255,0);
  text(t, width/2, height/2);
  ellipse(width/2, height/2, 5,5);
  
  textSize(20);
  fill(255,0,0);
  textAlign(LEFT);
  text("otro texto", width/2, height/2 + 50);
}
