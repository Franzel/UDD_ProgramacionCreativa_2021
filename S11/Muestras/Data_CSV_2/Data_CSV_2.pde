Table table;
float ancho = 5;
float espacio = 10;


void setup() {
    size(512, 1000);
    table = loadTable("ingresos.csv", "header");
    println(table.getRowCount() + " filas en la tabla");
    surface.setLocation(1920-width, 50);
    
}

void draw() {
    // text(tabla.getString(1,0), 100,100);
    background(255);
    fill(0);
    textSize(10);
    for (int i = 0;i < table.getRowCount();i++) {
        String v0 = table.getString(i,0);
        int v1 = table.getInt(i,1);
        
        text(v0,        100,50 +(espacio + ancho)*i);
        

        float largoBarra = map (v1, 0, 3000000, 0, 200);
        fill(0,150);
        rect(250, 50 +(espacio + ancho)*i, largoBarra, -ancho);
        
        text(v1,       250+ largoBarra,50 +(espacio + ancho)*i);
        noStroke();
        fill(255,0,0);
        
    }
}
