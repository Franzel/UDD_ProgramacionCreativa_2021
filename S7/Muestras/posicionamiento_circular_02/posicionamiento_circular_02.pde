//Este codigo posiciona elementos alrededor de un centro

float angle; //separacion (en grados o radianes) entre cada elemento
float radio; //que tan lejos del centro de la circunferencia 
int nElementos; //numero total de elementos
float s; //para el tamano de los elementos
float origenX, origenY; //para determinar donde esta el centro de la circunferencia

void setup() {
  size(500, 500);
  nElementos = 30;
  s = 10;

  //TWO_PI es la medida de la circuferencia (es igual a 360 grados)
  //Si la dividimos por la cantidad de elementos,
  //vamos a obtener una distribucion pareja que ocupa los 360 grados
  angle = TWO_PI / nElementos; 

  radio = 100;
  origenX = width/2;
  origenY = height/2;
}

void draw() {
  for (int i=0; i<nElementos; i++) {
    //Este es el algoritmo para posicionar en circulo
    float posX = origenX + sin(angle * i) * radio;
    float posY = origenY + cos(angle * i) * radio;
    ellipse(posX, posY, s, s);
  }
}