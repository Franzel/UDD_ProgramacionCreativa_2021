int i = 100;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for(int i=0; i<10; i++){
    fill(30*i, 5*i, 40);
    rect(40*i, 40*i, 30+i , 30+i); 
  }  
}
