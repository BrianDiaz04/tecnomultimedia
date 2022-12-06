//Brian Diaz 91306/8
import ddf.minim.*;
Minim minim;
AudioPlayer player;
Juego juego;
 int estado = 0;
boolean DEBUG = false;
void setup() {
  juego = new Juego();
  minim = new Minim(this);
  player = minim.loadFile("post.wav");
  size(500, 500);
}
void draw() {
  juego.dibujar();
}
void keyPressed() {
  juego.inicio();
  player.setVolume(-200);
  player.play();
   }
