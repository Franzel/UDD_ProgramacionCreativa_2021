color c = color(0);

void setup() {
  size(500, 500);
}

void draw() {

  if (mousePressed) {
    if (mouseX < width/2 && mouseY < height/2) {
      c = color(255, 0, 0); //rojo
    } 

    if (mouseX > width/2 && mouseY < height/2) {
      c = color(0,255,0); //verde
    } 

    if (mouseX < width/2 && mouseY > height/2) {
      c = color(0,255,255); //cyan
    } 

    if (mouseX > width/2 && mouseY > height/2) {
      c = color(255,255,0); //cyan
    }
  }else{
    c = color(0);
  }



  fill(c);
  ellipse(width/2, height/2, 200, 200);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
