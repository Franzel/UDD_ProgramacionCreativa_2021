float [] tamanos = new float [20];
color [] colores = new color [20];
float pos;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  resetear();
  pos=0;
}

void draw() {
  background(255);
  pos++;
  ellipse(pos,100, 30,30); 
  
  println(frameCount);
  if(frameCount%60==0){
    resetear();
  }

  for(int i=0;i<tamanos.length;i++){
    fill(colores[i]);
    figura(40*i,200,tamanos[i]);
  }
}

void figura(int posX, int posY, float tam) {
  rect(posX, posY, tam, tam*2);
  ellipse(posX, posY, 3, 3);
}

void mousePressed(){
  resetear();
}

void resetear(){
  for(int i=0;i<tamanos.length;i++){
    tamanos[i] = random(15,35);
  }
  
  for(int i=0;i<colores.length;i++){
    colores[i] = color(random(255),100,50);
  }
}
