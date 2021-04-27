//Declaramos un array de la clase "Modulo". Se hace igual que un array tradicional.
Modulo [] modulos = new Modulo[100];

void setup() {
    size(512, 512); 

    //inicializamos todos los elementos (onjetos "modulo" en este caso) con la informacion que necesita
    for (int i = 0; i < modulos.length; ++i) {
        //En este ejemplo, le pasamos solo valores random, pero esto se puede hacer en el orden que queramos
        modulos[i] = new Modulo(random(width), random(height), random(80), color(random(255), 100, 200, random(50,200)));    
    }
}

void draw() {
    background(255);

    //Invocamos el metodo dibuja() de cada objeto
    for (int i = 0; i < modulos.length; ++i) {
        modulos[i].dibuja();
    }
}

