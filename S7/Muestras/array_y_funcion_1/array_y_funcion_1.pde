float vel = 3;
float rot = 1;

void setup() {
    size(512, 512);
    rectMode(CENTER);
}

void draw() {
    rot += vel;

    background(255);
    figura(200,200,100,-rot/2, color(255,0,0));
    figura(300,290,50,-rot, color(255,0,255));
    figura(100,350,50,rot, color(255,255,0));
    
}

void figura(int x, int y, float t, float r, color c) {
    pushMatrix();
    translate(x, y);
    rotate(radians(r));
    fill(c);
    rect(0, 0, t, t);
    ellipse(0, 0, 5, 5);
    rect(t/2, 0, t/4, t/4);
    rect(-t/2, 0, t/4, t/4);
    popMatrix();
}


