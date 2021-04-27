Modulo modulo;

void setup() {
    size(512, 512); 
    modulo = new Modulo(100,100,30, color(255,0,0));
}

void draw() {
    background(255);
    modulo.dibuja();
}

