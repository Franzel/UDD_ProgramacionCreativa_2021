float posX; //posicion X inicial
float posY; //posicion Y inicial
float espacio; //espacio o separacion entre elementos
float nElementos; //numero total de elementos

void setup() {
  size(500, 500);
  posX = 0;
  posY = 100;
  espacio = 20;
  nElementos = 10; 
}

void draw() {

  /*
   El "for loop" es basicamente..un loop :)
   Cuando el computador se encuentra con un for loop,
   va a ejecutar lo que este dentro una y otra vez
   hasta que se cumpla la condición que se especifica
   */

  background (250, 50, 250);

  for (int i=0; i<nElementos; i++) {
    rect(i * espacio, posY, 10, 10);
  }

  /*
   Este for loop dice:
   int i=0  -- crea un a variable i que es igual a 0 (valor inicial)
   i<nElementos -- repetir este loop hasta que i deje de ser menor a 'nElementos'
   i++    -- en cada ciclo del for loop, agregamos 1 a i (es decir irá 0-1-2-3, etc)
   */
}