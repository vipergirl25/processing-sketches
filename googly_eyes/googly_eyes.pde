PImage bg;
void setup(){
  size(800, 600);

}
void draw(){
  int pupilX = 0;
  int pupilY = 0;
    bg = loadImage("bg.jpg");
  bg.resize(800, 600);
  background(bg);
println(mouseX);
println(mouseY);
  if(mouseX<=278 && mouseX>=159){
    pupilX = mouseX;
  }
  else if(mouseX>=278){
    pupilX = 278;
  }
  else if(mouseX<=159){
    pupilX = 159;
  }
  if(mouseY<=195 && mouseY>=162){
    pupilY = mouseY;
  }
  else if(mouseY>=195){
    pupilY = 195;
  }
  else if(mouseY<=162){
    pupilY = 162;
  }
    
 //278, 195
  //159, 162
  noStroke();
  fill(200, 200, 200);
  ellipse(221, 176, 200, 100);
  ellipse(522, 176, 200, 100);
  fill(0,0,0);
  ellipse(pupilX, pupilY, 50, 40);
  ellipse(pupilX + 301, pupilY, 50, 40);
}