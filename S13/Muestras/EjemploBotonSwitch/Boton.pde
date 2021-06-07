/*
Esta es la clase Botón.
 Tiene posicion, tamaño, color inactivo, color activo
 Además dibuja Texto de info (en rollover) y Texto para cuando está activo
 Todos estos parámetros se definen desde fuera de la clase
 */

class Boton {
  float posX, posY;
  float tamX, tamY;
  color colBase, col;

  boolean over, activo;
  String texto1, texto2;

  Boton(float px, float py, float tx, float ty, color c, String t1, String t2) {
    posX = px;
    posY = py;
    tamX = tx;
    tamY = ty;
    colBase = c; 
    texto1 = t1;
    texto2 = t2;

    activo = false;
    over = false;
  }

  void dibuja() {
    estoyEncima(); //antes que nada verificar si el mouse está encima de este botón

    pushStyle(); //push-pop style es como push-pop Matrix, pero para color, grosor de linea, etc.
    pushMatrix();
    translate(posX, posY);
    //si está encima (rollover)
    if (over) {
      if (activo) {
        col = color(255, 0, 0);
      } else {
        col = color(0, 255, 0);
      }
      textAlign(CENTER);
      textSize(8);
      fill(100);
      text(texto1, 0, tamY*1.1);
    } else {
      col = colBase;
    }

    //si su estado es activo
    if (activo) {
      textAlign(CENTER);
      textSize(10);
      fill(0);
      text(texto2, 0, tamY * 1.5);
      fill(col/2);
      ellipse(0, 0, tamX*1.2, tamY*1.2);
    }

    fill(col);
    ellipse(0, 0, tamX, tamY);

    popMatrix();
    popStyle();
  }

  void estoyEncima() {
    float distancia = dist(mouseX, mouseY, posX, posY);
    if (distancia < tamX/2) {
      over = true;
    } else {
      over=false;
    }
  }

  void clickea() {
    //si el mouse está encima al ser clickeado, el estado de la booleana "activo" cambia de estado
    //si era falso, pasa a verdadero, y viceversa
    if (over) {
      activo = !activo;
    }
  }
}
