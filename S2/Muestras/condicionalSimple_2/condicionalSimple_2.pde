color miColor; //delaramos una variable del tipo "color".

void setup() {
  size(300, 300); 
  miColor= color(0, 0, 0); //inicializamos color en negro
}

void draw() {
  line(width/2, 0, width/2, height);  //dibujamos una linea vertical en el centro
  
  //La sgte condicional dice:
  //si la posX del mouse es mayor a la mitad del canvas, cambia miColor a rojo
  //si no, cambia miColor a verde
  if (mouseX>width/2) {
    miColor = color(255, 0, 0);//cambiamos la variable a rojo
  } else {
    miColor=color(0, 255, 0);//cambiamos la variable a verde
  }

  //solo al final usamos la variable y dibujamos la elipse
  fill(miColor);
  ellipse(mouseX, mouseY, 50, 50);
}