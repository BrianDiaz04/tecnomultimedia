/*Brian Diaz 91306/8 comision 3
https://youtu.be/jRmLUTm4Zhc
*/
Fondo fondo;
Boton r1, r2, r3;
PImage Pidgey, caterpie, metapod, spearow, pikachu;
color r;

void setup(){
frameRate(7);
size(700,600);
spearow = loadImage("spearow.png");
pikachu = loadImage("pikachu.png");
 Pidgey = loadImage("pidgey.png");
 caterpie = loadImage("caterpie.png");
 metapod = loadImage("metapod.png");
r = color(255,90,8,150);
fondo = new Fondo();
r1 = new Boton("RUTA 1", 175, 395, 33, 70);
r2 = new Boton("RUTA 2", 175, 283, 33, 93);
r3 = new Boton("RUTA 3", 240, 220, 93, 33);
}
void draw() {
fondo.actualizar();
fill(r);
r1.actualizar();
r2.actualizar();
r3.actualizar();
}
void mousePressed() {
if (r1.click()) {
image(Pidgey,0,0);
image(caterpie,50,0);
rect(300,200,100,100);
fill(0);
text("Pidgey",300,250);
text("Caterpie",300,280);
 }
 if (r2.click()) {
image(metapod,0,0);
rect(300,200,100,100);
fill(0);
text("Metapod",300,250);
 }
 if (r3.click()) {
image(spearow,0,0);
image(pikachu,50,0);
rect(300,200,100,100);
fill(0);
text("Spearow",300,250);
text("Pikachu",300,280);
}
}
