class Boton {

float x, y, ancho, alto;
String txt;
color roj, nar;

Boton( String txt_, float x_, float y_, float ancho_, float alto_ ) {
txt = txt_;
x = x_;
y = y_;
ancho = ancho_;
alto = alto_;
roj = color(200, 0, 0 );
nar = color(250, 200, 200 );
}

void actualizar() {
push();
translate(x, y);
rectMode(CENTER);
textAlign(CENTER, CENTER);
if ( ov() ) {
fill(r);
} else {
fill(200,0,0);
}
rect(0, 0, ancho, alto);
fill(255);
text( txt, 0, 0);
pop();
}

boolean ov() {
return ( mouseX>x-ancho/2 && mouseX<x+ancho/2 &&
mouseY>y-alto/2 && mouseY<y+alto/2);
}

boolean click() {
return ov();
 }
}
