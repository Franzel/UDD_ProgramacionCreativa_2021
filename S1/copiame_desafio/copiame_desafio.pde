float sx;
float sy;

void setup() {
    size(400, 400);
    sx = width/4;
    sy = height/4;
}

void draw() {
    background(255);

    strokeWeight(2);
    stroke(255,0,0);
    fill(0, 255, 0);
    rect(0, 0, sx, sy);

    fill(0, 0, 255);
    rect(width-sx,0,sx,sy);

    fill(255, 255, 0);
    rect(0,height-sy,sx,sy);

    fill(0, 255, 255);
    rect(width-sx,height-sy,sx,sy);

    noStroke();
    fill(255, 0, 0, 127);
    ellipse(width/2,height/2,sx*3,sy*3);    
}
