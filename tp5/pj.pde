class Metapod {
  float posx, posy, radio, xspeed;
  PImage img;


  Metapod(PImage ft, float posX, float posY, float r) {
    img=ft;
   posx = posX;
    posy = posY;
    radio = r;
    img=loadImage("data/met.png");
  }
  void dibu() {
    imageMode(CENTER);
    image(img, mouseX, mouseY);
    ellipse(posx, posy, radio, radio);
  }
}
