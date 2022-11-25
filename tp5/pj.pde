class Metapod {
  float pox, poy, radio, xspeed;
  PImage img;


  Metapod(PImage ft, float posX, float posY, float r) {
    img=ft;
    pox = posX;
    poy = posY;
    radio = r;
    img=loadImage("data/met.png");
  }
  void dibu() {
    push();
    imageMode(CENTER);
    image(img, pox, poy);
    ellipse(pox, poy, radio, radio);
    pop();
  }
  void movimiento() {
    if ( key == 'w') {
      poy-=15;
    }
    if ( key == 's') {
      poy+=15;
    }
    if ( key == 'a') {
      pox-=15;
    }
    if ( key == 'd') {
      pox+=15;
    }
    if (poy<=0) {
      poy=0;
    }
    if (poy>=500) {
      poy=500;
    }
    if (pox>=500) {
      pox=500;
    }
    if (pox<=0) {
      pox=0;
    }
    if (poy<= 20 && pox>=450) {
      estado = 2;
    }
    if(dist(myMetapod.pox,myMetapod.poy,pkballs[19].posx,pkballs[19].posy)<5){
     estado=3;
}
  }
}
