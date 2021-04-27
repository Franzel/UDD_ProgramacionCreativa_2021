Table table;
float ancho = 1;
float espacio = 2;


void setup() {
    size(512, 1000);
    table = loadTable("vacunacion.csv", "header");
    println(table.getRowCount() + " filas en la tabla");
    surface.setLocation(1920-width, 50);
    
}

void draw() {
    // text(tabla.getString(1,0), 100,100);
    background(255);
    fill(0);
    textSize(7);
    for (int i = 0;i < table.getRowCount();i++) {
        String v0 = table.getString(i,0);
        int v1 = table.getInt(i,1);
        float v2 = table.getFloat(i,2);
        
        text(v0,        100,espacio + ancho*i);
        text(v1,        150,espacio + ancho*i);
        text(nf(v2,0,1),180,espacio + ancho*i);

        float largoBarra = map (v1, 0, table.getFloat(table.getRowCount()-1,1), 0, 200);
        fill(0,150);
        rect(250, 10 + espacio*i, largoBarra, -ancho);
        float posMedia = map (v2, 0, table.getFloat(table.getRowCount()-1,2), 0, 200);
        noStroke();
        fill(255,0,0);
        ellipse (250 + posMedia, 10 + espacio*i, ancho, ancho);
        
    }
}
