float [] tamanos = new float [20];
color [] colores = new color [20];
int [] onOff = new int [20]; 

void setup() {
  size(600, 600);
  rectMode(CENTER);
  resetear();
}

void draw() {
  background(255);
  for(int i=0;i<tamanos.length;i++){
    fill(colores[i]);
    figura(40*i,200,tamanos[i], onOff[i] );
  }
}

void figura(int posX, int posY, float tam, int oF) {
  if(oF == 1){
    rect(posX, posY, tam, tam*2);
  }else{
    ellipse(posX, posY, tam, tam*2);
  }
 
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
  
  //esto entrega solo numeros 0 o 1
  for (int i=0; i<onOff.length; i++){
    onOff[i] = round(random(0,1));
    println(onOff[i]);
  }
}
