//declaramos, creamos y asignamos un array de floats
float [] valoresA = {40, 80, 120, 160, 200}; //esta es solo una manera de crear arrays

void setup() {
  size(500, 500);
}

void draw() {
  //Ocupamos esos valores guardados para posicionar en x varias elipses 
  ellipse(valoresA[0], 100, 15, 15);
  ellipse(valoresA[1], 100, 15, 15);
  ellipse(valoresA[2], 100, 15, 15);
  ellipse(valoresA[3], 100, 15, 15);
  ellipse(valoresA[4], 100, 15, 15);
}