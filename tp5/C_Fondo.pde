class Fondo {
  PImage f;
  PImage ash;

  //constructor:
  Fondo() {
  }

  //metodos:
  void actualizar() {
    push();
    ash = loadImage("ash.png");
    f = loadImage("fondo.jpg");
    imageMode(CORNER);
    image(f,0,0);
     fill(200, 100, 0, 2);
    rect(0, 0, width, height);
    pop();
    ash.resize(55,60);
    image(ash, 450, 20);
  }
}
