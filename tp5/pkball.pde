class Pkball {
  float posx, posy, radio, xspeed;
  PImage img;


  Pkball(PImage ft, float posX, float posY, float r, float Xspeed) {
    img=ft;
    posx = posX;
    posy = posY;
    radio = r;
    xspeed = Xspeed;
    img=loadImage("data/pk.png");
  }
  void display() {
    noStroke();
    fill(0, 0, 0, 0);
    img.resize(15, 15);
    imageMode(CENTER);
    image(img, posx, posy);
    ellipse(posx, posy, radio, radio);
  }
  void mov() {
    posx += xspeed;
    //posy += 0.2;
    if (posx > width) {
      posx = 0;
    }
  }
}
