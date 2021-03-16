void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  if (mousePressed && mouseX > width/2) {
    fill(255, 0, 0); //rojo
  } else {
    fill(0, 255, 0); //verde
  }

  ellipse(width/2, height/2, 200, 200);
  line(width/2, 0, width/2, height);
  line(0,height/2, width, height/2);
}
