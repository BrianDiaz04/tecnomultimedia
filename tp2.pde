/*Brian Diaz
Comision 3
Legajo: 91306/8
Controles:
P y T color del fondo
Espacio para reiniciar
R para color mode RGB
H para HSB
*/
float g,t, p,angle;
void setup(){
  size(400,400);
  g = 0;
  t = 3;
  p = 26;
}
void draw() {
  strokeWeight(7);
  frameRate(30);
  angle += 0.011;
  //declaracion del fondo
  pushStyle();
  colorMode(RGB);
  background(p,t,random(35,49));
  popStyle();
  //translate para que se ubique en el centro
  translate(width/2,height/2);
  //for de ellipses repetitivos
  for (int b= 350; b>0; b -= 30)
  {  
  for (int c= 350; c>0; c -= 10){
    rotate(sin(angle));
    scale(0.95);
    rectMode(CENTER);
    fill(b,g,c,10);
    ellipse(0, 0, c,b);
  }
  //color del ellipse
  if (frameCount >= 20);{
    g++;
  } 
  if (g >= 250){
    g = -1;
  }
}
}
//color del fondo y personalizacion
void keyPressed(){
  if ( key == 'h'){
    colorMode(HSB);
  }
  if (key == 'r'){ 
    colorMode(RGB);
  }
  if (key == 't'){
    t++;
  }
  if (key == 'p'){
    p++;
  }
  if (key == ' '){
      g = 0;
      t = 3;
      p = 26;
  }
}
