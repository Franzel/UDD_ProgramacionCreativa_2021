

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);

  for(int i=0;i<20;i++){
    figura(40*i,200,30);
  }
}

void figura(int posX, int posY, float tam) {
  rect(posX, posY, tam, tam*2);
  ellipse(posX, posY, 3, 3);
}
