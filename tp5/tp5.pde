import ddf.minim.*;
Minim minim;
AudioPlayer player;
Metapod myMetapod;
Pkball[]pkballs = new Pkball[20];
int estado = 0;
boolean DEBUG = false;
void setup() {
  myMetapod = new Metapod(loadImage("data/met.png"), mouseX, mouseY, 5);
  minim = new Minim(this);
  player = minim.loadFile("post.wav");
  size(500,500);
  background(30,300,10);
   for(int i = 0; i < pkballs.length; i++ ){
    
    pkballs[i] = new Pkball(loadImage("pk.png"),-100,i*height/50,20,random(5,7));
  }
}
void draw() {
  background (30,300,10); 
  if (estado == 0){
} else if (estado == 1) {
 background(90);
  myMetapod.dibu();
  for(int i = 0; i < pkballs.length; i++ ){
  pkballs[i].display();
  pkballs[i].mov();
   if ( estado == 1 && mouseY<= 20){
estado=2;
 }
}
if( estado ==2){
 background(0,30,0);
 fill(20);
 textSize(30);
 text("Ganaste", 30,400);
}
}
}
void keyPressed(){
  if (estado == 0){
    if (key ==' '){
      estado = 1;
      player.play();
  }
}
}
