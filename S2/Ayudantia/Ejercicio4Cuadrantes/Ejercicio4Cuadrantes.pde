color cEllipse = color(0);
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  fill(cEllipse);
  ellipse(width/2, height/2, 100, 100);

  if (mousePressed) {
    if (mouseX<width/2 && mouseX>0 && mouseY>0 && mouseY<height/2) {
      cEllipse = color(255, 0, 0);
    } else if (mouseX > width/2 && mouseX < width && mouseY>height/2 && mouseY<height) {
      cEllipse = color(255, 255, 0);
    } else if (mouseX<width/2  &&  mouseY > height/2) {
      cEllipse = color(0,255,255);
    } else {
      cEllipse = color(0,255,0);
    }
  } else {
    cEllipse = color (0);
  }
}
