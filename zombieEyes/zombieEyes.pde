PImage face;
void setup(){
  face = loadImage("face.png");
 
  image(face, 0, 0);
  size(666, 1024);
 
}
void draw(){
  background(face);
  

  
  if(mouseX==173 && mouseY==177){
  fill(#E2BEF5);
  }
  else{
  fill(200, random (250), random (250));
  }
  ellipse(173, 177, 80, 70);
  if(mouseX==287 && mouseY==181){
  fill(#FF126D);
  }
  else{
    fill(random(100), random (100), random (100));
  }
  ellipse(287, 181, 80, 70);
   fill(0,0,0);
  ellipse(mouseX, mouseY, 10, 10);
  fill(0,0,0);
  ellipse(mouseX, mouseY, 10, 10);
}