Fondo fondo;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
Metapod myMetapod;
Pkball[]pkballs = new Pkball[20];
int estado = 0;
boolean DEBUG = false;
void setup() {
  fondo = new Fondo();
  myMetapod = new Metapod(loadImage("data/met.png"), width/2,450 , 5);
  minim = new Minim(this);
  player = minim.loadFile("post.wav");
  size(500,500);
  background(30,300,10);
   for(int i = 0; i < pkballs.length; i++ ){
    
    pkballs[i] = new Pkball(loadImage("pk.png"),-100,i*height/35,20,random(3,4));
  }
}
void draw() {
  background (30,300,10); 
  textSize(30);
  text("pulsa espacio",200,400);
  if (estado == 0){
} else if (estado == 1) {
 background(90);
 fondo.actualizar();
  myMetapod.dibu();
  for(int i = 0; i < pkballs.length; i++ ){
  pkballs[i].display();
  pkballs[i].mov();
 }
}
if( estado == 2){
 background(0,0,30);
 fill(20);
 textSize(30);
 text("Ganaste", 30,400);
}
if(dist(myMetapod.pox,myMetapod.poy,pkballs[19].posx,pkballs[19].posy)<=20){
 estado=3;
}

if( estado == 3){
 background(300,0,0);
 fill(20);
 textSize(30);
 text("Perdiste", 30,400);
}
}


void keyPressed(){
  myMetapod.movimiento();
  if (estado == 0){
    if (key ==' '){
      estado = 1;
      player.setVolume(-200);
      player.play();
  }
}
}
