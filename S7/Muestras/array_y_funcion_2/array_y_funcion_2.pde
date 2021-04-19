float vel = 3;
float rot = 1;

int nFilas = 12;
int nColumnas = 12;

float[][] angulos = new float[nFilas][nColumnas];
float[][] velocidades = new float[nFilas][nColumnas];
float[][] tamanos = new float[nFilas][nColumnas];
color[][] colores = new color[nFilas][nColumnas];


void setup() {
    size(512, 512);
    rectMode(CENTER);
    randomizar();
}

void draw() {
   background(255);


    for (int i = 0; i < velocidades[0].length; ++i) {
        for (int j = 0; j < velocidades[1].length; ++j) {
            float miRot = angulos[i][j] += velocidades[i][j];
            figura(50 * i, 50 * j, tamanos[i][j], miRot, colores[i][j]);
        }
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
    background(random(255));

    for (int i = 0; i < angulos[0].length; ++i) {
        for (int j = 0; j < angulos[1].length; ++j) {
            angulos[i][j] = random(360);
        }
    }

    for (int i = 0; i < velocidades[0].length; ++i) {
        for (int j = 0; j < velocidades[1].length; ++j) {
            velocidades[i][j] = random(- 1,1);
        }
    }
    
    for (int i = 0; i < colores[0].length; ++i) {
        for (int j = 0; j < colores[1].length; ++j) {
            colores[i][j] = color(random(255), 200, 100 +random(155));
        }
    }

    for (int i = 0; i < tamanos[0].length; ++i) {
        for (int j = 0; j < tamanos[1].length; ++j) {
            tamanos[i][j] = random(15,35);
        }
    }

}


