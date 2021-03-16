void setup() {
  size(500, 500);
}

void draw() {
  if (mouseX > width/2) {
    fill(255, 0, 0); //rojo
  } else {
    fill(0, 255, 0); //verde
  }

  ellipse(width/2, height/2, 200, 200);
  line(width/2, 0, width/2, height);
}
