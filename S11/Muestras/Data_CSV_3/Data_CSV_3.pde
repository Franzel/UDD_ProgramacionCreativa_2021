Table table;

void setup() {
  size(800, 400);
  table = loadTable("temperaturaAbril.csv", "header");
  println(table.getRowCount() + " filas en la tabla");
}

void draw() {
  background(255);
  for (int i = 0; i < table.getRowCount(); i++) {
    int v0 = table.getInt(i, 0);
    float v1 = table.getFloat(i, 1);
    float v2 = table.getFloat(i, 2);
    fill(0);
    textSize(10);
    text(v0, 100+20*i, 310);

    fill(255, 0, 0, 50);
    
    rect(100+20*i, 300, 15, -v1 * 3);
    rect(100+20*i, 300, 15, -v2 * 3);
    
    textSize(8);
    fill(0,0,255);
    text(str(v1), 100+20*i, 300-v1*3);
    fill(255,0,0);
    text(str(v2), 100+20*i, 300-v2*3);
    
    float diff = v2-v1;
    ellipse(100+20*i, 200, diff, diff);
  }
}
