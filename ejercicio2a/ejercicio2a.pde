PFont font;
int fondo;
String texto;

void setup(){
  size(400,400);
  noStroke();
  font = loadFont("Monospaced-48.vlw");
  textSize(60);
  fondo = 255;
  texto = "Buenos días";
}

void draw(){
  background(fondo);
  
  fill(255,255,0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  if (mouseX > 20 && mouseX < 100 && mouseY > 20 && mouseY < 100){
    fondo = 0;
  } else if(mouseX > 300 && mouseX < 380 && mouseY > 20 && mouseY < 100){
    fill(255,0,0);
    ellipse(200,200,200,200);
  } else if(mouseX > 20 && mouseX < 100 && mouseY > 300 && mouseY < 380){
    fill(0);
    text(texto, 50, 220);
  } else if(mouseX > 300 && mouseX < 380 && mouseY > 300 && mouseY < 380) {
    fill(0, 255,0);
    rect(100, 100, 200, 200);
  }else{
    fondo = 255;
  }
   
}


  
