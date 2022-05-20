PImage bg, bg2, bg0,bg3, bg4, bg5;
boolean DEBUG = true;
float
posX,x2;
PFont font;
int estado = 0;
int contador= 0;
void setup(){
  size(600,600);
  frameRate(30);
  font = createFont("Pokemon_GB.ttf",7);
textFont(font);
  bg0 = loadImage("start.png");
  bg = loadImage("PP2.jpg");
  bg2 = loadImage("PP3.jpg");
  bg3 = loadImage("PP4.jpg");
  bg4 = loadImage("Ruta7.jpg");
  bg5 = loadImage("gb5.jpg");
  x2 = random(0,100);
}
void draw (){
    println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  background(0,0,0);
  
  if (estado==0){
    background(bg0);
    noStroke();
   float x2 = random(200);
    fill(#C6C6C6);
    textSize(10);
    text("Pulsa espacio", 173,530);
    fill(0,0,0,x2);
    rect(92,473,300,60);
  }
  if (estado==1){
    contador++;
    background(bg);
    fill(0,0,0,100);
    noStroke();
    rect(0,150,600,300);
    fill (#FCCA6B);
    stroke(40);
    textSize(20);
    text("Pokémon Edición Rojo fuego", 50,235);
    fill(#FCCA6B);
    text("Créditos", 50,300);
  }
   if( contador>=100){
    background(bg);
    fill(0,0,0,100);
    noStroke();
    rect(0,150,600,300);
    fill (#FCCA6B);
    textSize(30);
    text("Director", 50,250);
    fill (225,255,255);
    text("Junichi Masuda", 50,320);
  }
if( contador>=180){
    background(bg2);
    fill(0,0,0,100);
    noStroke();
    rect(0,150,600,300);
    fill (#FCCA6B);
    textSize(25);
    text("Graphic Design", 50,230);
    text("Leader",50,255);
    fill (225,255,270);
    text("Takao Unno", 50,320);
  } 
if( contador>=270){
   background(bg3);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
    textSize(30);
    text("Art director", 50,200);
    fill (225,255,255);
    text("Ken Sugimori", 50,230);
    fill (#FCCA6B);
    textSize(30);
    text("Battle Director", 50,270);
    fill (225,255,255);
    text("Shigeki Morimoto", 50,300);
  }
  if (contador>=330){
    background(bg3);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
   textSize(30);
    text("Program Leader", 50,200);
    fill (225,255,255);
    text("Tetsuya Watanabe", 50,230);
    fill (#FCCA6B);
    textSize(30);
    text("Planning Leader", 50,270);
    fill (225,255,255);
    text("Koji Nishino", 50,300);    
  }
  if (contador>=370){
    background(bg4);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
   textSize(30);
    text("Pokemon Designers", 50,200);
    fill (225,255,255);
    textSize(20);
    text("Ken Sugimori", 50,230);
    text("Motofumi Fujiwara", 50,270);
    text("Koji Nishino", 50,300);    
}
   if (contador>=400){
     background(bg4);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
   textSize(30);
    text("Graphic Designers", 50,200);
    fill (225,255,255);
    textSize(20);
    text("Tetsuya Watanabe", 50,230);
    text("Motofumi Fujiwara", 50,270);
    text("Takao Unno", 50,300); 
   }
     if (contador>=420){
    background(bg5);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
   textSize(30);
    text("Game Designers", 50,200);
    fill (225,255,255);
    textSize(20);
    text("Junichi Masuda", 50,230);
    text("Tetsuji Ohta", 50,270);
    text("Koji Nishino", 50,300); 
}
 if (contador>=500){
    background(bg5);
    fill(0,0,0,100);
    rect(0,150,600,300);
    fill (#FCCA6B);
   textSize(30);
    text("Fin.", 50,200);
}
}
  void keyPressed(){
    if( key == ' '){
    background(0,0,0,x2);
    estado = 1;
    contador = 0;
    }
  }
