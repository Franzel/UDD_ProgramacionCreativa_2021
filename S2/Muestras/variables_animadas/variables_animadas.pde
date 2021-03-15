//Animando variables

//definimos nuestras variables globales
float posX;
float tam;

void setup() {
  size(800, 400);
  //inicializamos las variables
  posX = 0;
  tam = 100;
}

void draw() {
 // background(0);
  posX = posX + 3; //en cada cuadro, le sumamos 3 a la variable
  tam = tam + 1; //idem, agregando 1 cada cuadro
  
  //acá usamos la variable posX para animar el color
  //Esto muestra que el nombre de la variable es independiente de su uso
  fill(posX,255,255); 
  ellipse(posX, height/2, tam, tam); //usamos las variables para dibujar un circulo que crece
}
