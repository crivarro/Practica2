PFont font;
int fondo, locH, diam, fade;
String texto;
float giro;

void setup(){
  size(400,400);
  noStroke();
  font = loadFont("Monospaced-48.vlw");
  textSize(60);
  fondo = 255;
  texto = "Hi";
  locH = 0;
  diam = 250;
  giro = -15;
  fade = 255;
}

void draw(){
  background(fondo);
  // Animación texto
  locH += 4;
  if(locH > 360){
    locH = 0;
  }
  
  // Animación ellipse
  diam -=3;
  fade -= 3;
  if(diam < 0){
    diam = 250;
    fade = 255;
  }
  
  // Animación cuadrado
  giro += 2;
  
  fill(255,255,0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  if (mouseX > 20 && mouseX < 100 && mouseY > 20 && mouseY < 100){
    fondo = 0;
  } else if(mouseX > 300 && mouseX < 380 && mouseY > 20 && mouseY < 100){
    fill(255,0,0, fade);
    ellipse(200,200,diam,diam);
  } else if(mouseX > 20 && mouseX < 100 && mouseY > 300 && mouseY < 380){
    fill(0);
    text(texto, locH, 220);
  } else if(mouseX > 300 && mouseX < 380 && mouseY > 300 && mouseY < 380) {
    pushMatrix();
    translate(200, 200);
    rotate(radians(giro));
    fill(0, 255,0);
    rect(-100, -100, 200, 200);
    popMatrix();
  }else{
    fondo = 255;
  }
   
}


  
