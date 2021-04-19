float vel = 3;
float rot = 1;

int nElementos = 12;
int nColumnas = 12;

float[] angulos = new float[nElementos];
float[] velocidades = new float[nElementos];
float[] tamanos = new float[nElementos];
color[] colores = new color[nElementos];


void setup() {
    size(512, 512);
    rectMode(CENTER);
    randomizar();
}

void draw() {
   background(255);
    for (int i = 0; i < velocidades.length; ++i) {
        pushMatrix();
        translate(width/2, height/2);
        rotate(radians(30*i));
        float miRot = angulos[i] += velocidades[i];
        figura(100, 0, tamanos[i], miRot, colores[i]);
        popMatrix();
        
    }
}

void figura(int x, int y, float t, float r, color c) {
    pushMatrix();
    translate(x, y);
    stroke(c*3);
    fill(c/3);
    ellipse(0 , 0, 50,50);
    rotate(radians(r));
    fill(c);
    rect(0, 0, t, t);
    fill(c*2);
    ellipse(0, 0, 5, 5);
    rect(t / 2, 0, t / 4, t / 4);
    rect(- t / 2, 0, t / 4, t / 4);
    popMatrix();
}

void mousePressed(){
    randomizar();
}

void randomizar(){

    for (int i = 0; i < angulos.length; ++i) {
            angulos[i] = random(360);
    }

    for (int i = 0; i < velocidades.length; ++i) {
            velocidades[i] = random(- 1,1);
    }
    
    for (int i = 0; i < colores.length; ++i) {
            colores[i] = color(random(255), 200, 100 +random(155));
    }

    for (int i = 0; i < tamanos.length; ++i) {
            tamanos[i] = random(15,35);
    }

}


