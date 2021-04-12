/* Este ejemplo muestra los pasos básicos para trabajar con un array */

int[] myNumbers; // declarar array de ints

void setup() {
  myNumbers = new int[10]; //crear y decir cuantos elementos va a tener

  for (int i = 0; i<myNumbers.length; i++) { // el ".length" es la cantidad de elementos del array 
    myNumbers[i] = 10*i; //asignar valores
  }
}

void draw() {
  for (int i = 0; i<myNumbers.length; i++) {
    println(myNumbers[i]); //acceder a esos valores
  }
}