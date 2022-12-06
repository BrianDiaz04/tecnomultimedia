class Juego {


  Fondo fondo;
  Metapod myMetapod;
  Pkball[]pkballs = new Pkball[20];
  int estado = 0;
  Juego() {
    fondo = new Fondo();
    myMetapod = new Metapod(loadImage("data/met.png"), width/2, 450, 5);
    for (int i = 0; i < pkballs.length; i++ ) {

      pkballs[i] = new Pkball(loadImage("pk.png"), -100, i*height/35, 20, random(5));
    }
  }
  void dibujar() {
    if (estado == 0) {
      fondo.inicio();
    } else if (estado == 1) {
      background(90);
      fondo.actualizar();
      myMetapod.dibu();
       if (myMetapod.poy<= 30 && myMetapod.pox>=400) {
      estado = 2;}
      for (int i = 0; i < pkballs.length; i++ ) {
        if (dist(myMetapod.pox, myMetapod.poy, pkballs[i].posx, pkballs[i].posy)<=20) {
          estado = 3;
        }
        pkballs[i].display();
        pkballs[i].mov();
      }
    } else if ( estado == 2) {
      fondo.ganaste();
      player.pause();
    } else if ( estado == 3) {
      fondo.perdiste();
      player.pause();
    }
     if (key == ' ') {
        estado = 1;
        myMetapod.pox= width/2 ;
        myMetapod.poy= 450;
        myMetapod.radio= 5;
      }
  }
  void inicio() {
    myMetapod.movimiento();
    //if (estado == 0) {
    if (key ==' ') {
      estado = 1;
    }
  }
}
