color miColor;

void setup() {
  size(300, 300); 
  miColor= color(0, 0, 0);
}

void draw() {
  line(width/2, 0, width/2, height);

  // esta condicional es mas compleja, dice:
  // si apreto el mouse, miColor es azul (no importa donde esté)
  // pero si no tengo mouse apretado, y la posicion del mouse es mayor a la mitad del ancho, pinta rojo
  // si ninguna de las condiciones anteriores se cumple (o sea posicion al lado IZQ y sin apretar mouse), pinta verde
  
  if(mousePressed){
    miColor = color(0,0,255);//azul
  } else if (mouseX>width/2) {
    miColor = color(255, 0, 0);//rojo
  } else {
    miColor=color(0, 255, 0);//verde
  }

  fill(miColor);
  ellipse(mouseX, mouseY, 50, 50);
}