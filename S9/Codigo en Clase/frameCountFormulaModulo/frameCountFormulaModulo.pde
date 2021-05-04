boolean soyRojo;

void setup() {
  size(500, 500);
  soyRojo = false;
  rectMode(CENTER);
}

void draw() {
  background(255);

  //if (frameCount %200 == 0) {
  //  fill(255, 0, 0);
  //} else {
  //  fill(0, 255, 0);
  //}

  if (frameCount %10 == 0) {
    soyRojo = !soyRojo;
  } 

  if(soyRojo == true){
    fill(255,0,0);
    ellipse(width/2, height/2, 100, 100);
  }else{
    fill(0);
    rect(width/2, height/2, 100, 100);
  }
}
