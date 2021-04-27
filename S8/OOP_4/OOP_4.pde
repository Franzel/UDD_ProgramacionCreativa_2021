//Declaramos un array de la clase "Modulo". Se hace igual que un array tradicional.
Modulo[][] modulos = new Modulo[20][20];

void setup() {
    size(512, 512); 
    
    // //inicializamos todos los elementos (onjetos "modulo" en este caso) con la informacion que necesita
    // for (int i = 0; i < modulos[0].length; ++i) {
    //     for (int j = 0; j < modulos[1].length; ++j) {
    //         //Eneste ejemplo, le pasamos solo valores random, pero esto se puede hacer en el orden que queramos
    //         modulos[i][j] = new Modulo(random(width), random(height), random(10,30), color(random(255), 100, 200, 50), floor(random(1, 5)));    
    //     }
// }
    
    //Este for loop bidimiensional los ordena en grilla. Apagar el de arriba al prender este para verlo mejor
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            //En este ejemplo, le pasamos solo valores random, pero esto se puede hacer en el orden que queramos
            modulos[i][j] = new Modulo(40 * i, 40 * j, 15, color(random(255), 50, 100, 50), floor(random(1, 5)));
        }
    }
}

void draw() {
    background(255);
    
    //Invocamos el metodo dibuja() de cada objeto
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            modulos[i][j].dibuja();
            modulos[i][j].tirita();
            //modulos[i][j].col = color(255,0,200,50); tambi'en podemos cambiar una variable dentro de cada objeto, anteponiendo un punto "."
        }
    }
}



