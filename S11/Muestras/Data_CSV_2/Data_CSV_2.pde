Table table;
float ancho = 8;
float espacio = 10;


void setup() {
    size(512, 1000);
    table = loadTable("ingresos.csv", "header");
    println(table.getRowCount() + " filas en la tabla");    
}

void draw() {
    // text(tabla.getString(1,0), 100,100);
    background(255);
    fill(0);
    textSize(10);
    for (int i = 0;i < table.getRowCount();i++) {
        String v0 = table.getString(i,0);
        int v1 = table.getInt(i,1);
        
        fill(150,0,0);
        textAlign(RIGHT);
        text(v0, 180, 50 +(espacio + ancho)*i);

        float largoBarra = map (v1, 0, 3000000, 0, 200);    
        rect(200, 50 +(espacio + ancho)*i, largoBarra, -ancho);
      
        textAlign(LEFT);
        text(v1,200 + largoBarra + 10,50 +(espacio + ancho)*i);
        noStroke();
        fill(255,0,0);
    }
}
