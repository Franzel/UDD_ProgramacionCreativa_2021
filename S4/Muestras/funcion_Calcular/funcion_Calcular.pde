/*
Este código demuestra el uso de una función que es creada especialmente.
 La función tiene un "return", lo que significa que "devuelve" algo,
 en este caso devuelve un número o resultado luego de hacer una operación matemática
 entre dos números.
 
 Nótese que esta función recibe parámetros (float num1, float num2)
 Eso significa que necesita que le demos 2 float cuando la llamamos
 */

float alpaca; //declaramos una variable tipo float 
float camello;  //declaramos una variable tipo float
float guanaco;  //declaramos una variable tipo float

void setup() {
  //Llamamos a la función, y nótese como le entregamos 2 números cada vez que se llama
  alpaca  = calcula(20, 10.5);
  camello = calcula(-120, 26);
  guanaco = calcula(-5, 5);

  println(alpaca);
  println(camello);
  println(guanaco);
}

void draw() {
}

/*
Ver abajo: El 'return' hace que se entregue un resultado hacia afuera de la función
Importante notar que cuando usamos 'return' tenemos que especificar el tipo de data
En este caso vean que la función es del tipo 'float' (y no void como suele ser)
Eso es porque el resultado final va a ser un float, que obtenemos con el 'return'
*/

float calcula(float num1, float num2) {
  //en este caso lo vamos a ocupar para sumar los dos numeros que recibe
  float r = num1 + num2;
  return r; 
}