class Button {
  float posX, posY;
  float tamX, tamY;
  color colBase, col;

  boolean over, activo;

  Button(float px, float py, float tx, float ty, color c) {
    posX = px;
    posY = py;
    tamX = tx;
    tamY = ty;
    colBase = c; 

    activo = false;
    over = false;
  }

  void dibuja() {
    pushMatrix();
    translate(posX, posY);

    println(over + "  " + activo);
    if (over) {
      if (activo) {
        col = color(255, 0, 0);
      } else {
        col = color(0, 255, 0);
      }
      textAlign(CENTER);
      textSize(8);
      text("click para activar", 0, tamY*1.1);
    } else {
      col = colBase;
    }
    fill(col);
    ellipse(0, 0, tamX, tamY);

    if (activo) {
      textAlign(CENTER);
      textSize(10);
      text("ACTIVO", 0, tamY * 1.5);
    }
    popMatrix();
  }

  void encima(int mX, int mY) {

    float distancia = dist(mX, mY, posX, posY);
    if (distancia < tamX) {
      over = true;
    } else {
      over=false;
    }
  }

  void clickea() {
    if (over) {
      activo = !activo;
    }
  }
}
