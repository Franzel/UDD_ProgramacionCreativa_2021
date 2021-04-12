//Aca declaramos una array de floats, con 30 elementos
//Nótese que aun no le damos valores, es decir solo hacemos un array con espacios vacíos
float [] valoresA = new float [30];
float [] valoresB = new float [30];


void setup() {
  size(500, 500);

  //Acá asignamos valores a cada uno de los espacios del array
  for (int i=0; i<valoresA.length; i++) {
    valoresA[i] = 20*i;              //para este array ocupamos el i para generar un incremento constante
    valoresB[i] = random(100, 120);  //aca en cambio le asignamos un valor random a cada espacio

    print("valor A en indice " + i + " = " + valoresA[i]); //veamos que nos da
    println("    valor B en indice " + i + " = " + valoresB[i]); //veamos que nos da
  }
}

void draw() {
  //Ya tenemos los arrays con valores, ahora los podemos usar
  //en cada vuelta del for loop, vamos recuperando los valores de los arrays
  for (int i=0; i<valoresA.length; i++) {
    if (i==20) { //Si eres el numero 20
      fill(255, 0, 0); //pinta rojo
    } else {
      fill(255);
    }

    ellipse(valoresA[i], valoresB[i], 15, 15); //usamos un array para posX y otro para posY de la elipse
  }
}
