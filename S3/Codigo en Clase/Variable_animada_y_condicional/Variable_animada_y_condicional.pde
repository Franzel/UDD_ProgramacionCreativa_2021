float posX;
float vel;


void setup() {
    size(800,200);
    posX = width/2;
    vel = 1;
}

void draw() {
    background(255);
    if (mouseX>width/2){
        posX += vel;
    }else{
        posX -= vel;
    }

    ellipse(posX, height/2, 50,50);
}

void mousePressed() {
    vel++;
    println("vel : " + vel);
}
