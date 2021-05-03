//Declaramos un array de la clase "Modulo". Se hace igual que un array tradicional.
Modulo[][] modulos = new Modulo[20][20];

void setup() {
    size(600, 600); 
    rectMode(CENTER);
    
    //Este for loop bidimiensional los ordena en grilla. Apagar el de arriba al prender este para verlo mejor
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            //En este ejemplo, le pasamos solo valores random, pero esto se puede hacer en el orden que queramos
            modulos[i][j] = new Modulo(40 * i, 40 * j, 65, color(random(255), 65, 100, 200), floor(random(1, 10)));
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
            float d = dist(mouseX, mouseY, modulos[i][j].posX, modulos[i][j].posY );
            modulos[i][j].tam = map(d,200,0,5,100);
            modulos[i][j].tam = constrain(modulos[i][j].tam, 0,100);
        }
    }
}

void mouseDragged() {
    
    //randomizar la velocidad de cada objeto al apretar el mouse dentro de ellos
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            if (dist(modulos[i][j].posX, modulos[i][j].posY, mouseX, mouseY) < 15) {
                modulos[i][j].vel += 1;
                modulos[i][j].col = color(255,0,200,100); //tambi'en podemos cambiar una variable dentro de cada objeto, anteponiendo un punto "."
                
            }
        }
    }
                
}
                
                
                
                