class Fondo {
PImage kanto;
PImage snorlax;
Fondo() {
}
void actualizar() {
push();
snorlax = loadImage("snorlax.png");
kanto = loadImage("Kanto.jpg");
image(kanto,0,0);
image(snorlax, 562,450);
fill(200, 100, 0, 2);
rect(0, 0, width, height);
pop();
}
}
