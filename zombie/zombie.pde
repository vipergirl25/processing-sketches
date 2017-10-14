PImage creeper;
int creeperx = 52;
int creepery = 98;
boolean isNear(int a, int b) {
if (abs(a - b) < 10)
     return true;
else
     return false;
}
void setup(){
  size(500, 500);
  PImage bg = loadImage("greenbg.jpg");
  bg.resize(500, 500);
  creeper = loadImage("creeper.png");
  creeper.resize(20, 10);
  background(bg);
}
  

void draw(){
  image(creeper, creeperx, creepery);
  if (mousePressed && mouseX == 0 && mouseY ==0){
   ellipse(mouseX, mouseY, 50, 50); 
   fill(0, 250, 0);
  }
  if (mousePressed && mouseX>0 && mouseY >0){
  ellipse(mouseX, mouseY, 50, 50);
  fill(250, 0, 0);
  }
  if (mousePressed && isNear(creeperx, mouseX) && isNear(creepery, mouseY)){
    ellipse(mouseX, mouseY, 50, 50);
    fill(0, 250, 0);
  }
}