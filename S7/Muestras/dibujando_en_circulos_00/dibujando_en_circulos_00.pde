float origenX, origenY;  //usaremos este para el centro
float radio; // radio de la elipse
int nElementos; 

void setup() {
	size(500, 500);
	origenX = width/2; //mitad del ancho del canvas
	origenY = height/2; //mitad del alto del canvas
	radio = 100; //incicializamos el radio, lo vamos a modificar despues
	nElementos = 12; 
}

void draw() {
  background(255);
	for (int i = 0; i<nElementos;i++){
		//En cada vuelta el ángulo aumenta porque multiplicamos por i (que va 0,1,2,3,4,etc)
		//esto da resultado en 'radianes' (otra manera de medir ángulos). Ver https://es.wikipedia.org/wiki/Radian
		float angulo = radians(10) * i; //en cada vuelta el angulo incrementará en 10 grados, usamos el radians() para convertir a radianes

		//calculamos la posicion X e Y para cada elemento
		//esta es una formula que calcula la distancia respecto al origen, en X e Y
		//siempre sera: ORIGEN + COSENO(o SENO) del angulo del elemento respecto al origen, multiplicado por el Radio (que tan lejos) 
		float x = origenX + cos(angulo) * radio;
		float y = origenY + sin(angulo) * radio;

		ellipse(x,y,10,10);
    line(origenX, origenY, x, y);
	}	
}