//Declaramos un array de la clase "Modulo". Se hace igual que un array tradicional.
Modulo[][] modulos = new Modulo[11][11];

void setup() {
    size(600, 600); 
    rectMode(CENTER);
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
            modulos[i][j] = new Modulo(60 * i, 60 * j, 65, color(random(255), 65, 100, 200), floor(random(1, 10)));
            // modulos[i][j].vel = random( - 2,2);
        }
    }
}

void draw() {
    background(255);
    
    //Invocamos el metodo dibuja() de cada objeto
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            modulos[i][j].dibuja();
            modulos[i][j].rota();
            //modulos[i][j].tirita();
            //modulos[i][j].col = color(255,0,200,50); tambi'en podemos cambiar una variable dentro de cada objeto, anteponiendo un punto "."
        }
    }
}

void mousePressed() {
    
    //randomizar la velocidad de cada objeto al apretar el mouse dentro de ellos
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            if (dist(modulos[i][j].posX, modulos[i][j].posY, mouseX, mouseY) < 15) {
                modulos[i][j].vel += 0.1;
            }
        }
    }
    
}



