float [] largos = new float [10];

void setup() {
  size(600, 500);

  largos[0] = 10;
  largos[1] = 20;
  largos[2] = 30;
  largos[3] = 40;
  largos[4] = 50;
  largos[5] = 60;
  largos[6] = 70;
  largos[7] = 80;
  largos[8] = 90;
  largos[9] = 100;
}

void draw() {
  background(0);
  fill(255, 0, 0);
  rect(0, 0,   largos[0], 25);
  rect(0, 30,  largos[1], 25);
  rect(0, 60,  largos[2], 25);
  rect(0, 90,  largos[3], 25);
  rect(0, 120, largos[4], 25);
  rect(0, 150, largos[5], 25);
  rect(0, 180, largos[6], 25);
  rect(0, 210, largos[7], 25);
  rect(0, 240, largos[8], 25);
  rect(0, 270, largos[9], 25);
}
