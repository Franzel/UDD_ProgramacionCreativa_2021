
float[] tams = new float[50];

void setup() {
    size(512, 512); 
    //cuando decimos tams.length estamos pidiendo el "largo" de la lista o el "tamano del array"
    //definido arriba cuando creamos el array.
    //Aca en el setup estamos rellenando el array con una serie de numeros random.

    for (int i = 0;i < tams.length ;  i++) {
        tams[i] = random(100);
    }

    println(tams); //veamos los valores que nos dio el random
}

void draw() {
    background(0);

    
    for (int i = 0;i < tams.length ; i++) {
        float r = map(tams[i], 0, 100, 0, 255);
        fill(r,0,0);
        rect(100, i *5, tams[i], 3); //dibujemos barritas cuyo largo lo define el array
    }
    
}
