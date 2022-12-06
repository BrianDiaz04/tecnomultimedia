class Fondo {
  PImage f;
  PImage ash;
  PImage gan,per,in;

  //constructor:
  Fondo() {
  }

  //metodos:
  void inicio(){
     in = loadImage("in.png");
     push();
     background(in);
     pop();
  }
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
  void ganaste() {
    push();
     gan = loadImage("gan.png");
    imageMode(CORNER);
    image(gan,0,0);
     fill(200, 100, 0, 2);
    rect(0, 0, width, height);
    pop();
  }
   void perdiste() {
   push();
     per = loadImage("per.png");
    imageMode(CORNER);
    image(per,0,0);
     fill(200, 100, 0, 2);
    rect(0, 0, width, height);
    pop();
  }
}
